Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B70D1C5F27
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760003994; cv=none; b=nC+dLsG9khfAIIRZsK9hRtEe4nLVj3u47i28DOgxxo9ZKZV1otYo0IhBNbNpv2Oi5cWn1SPyl1c+g5DiixdyYXFmMrT1Eycz7vcJ/kv8RSEq5b9/XGEodHPOUkexBRppK8UBUhS1DQ3gm0+LbLipyxtGVnEQD7kN0vqqWPuJL7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760003994; c=relaxed/simple;
	bh=vzgy7wHym0mcwZ23BbUFx5YHcU8feu36V8kWprRSCHk=;
	h=To:Subject:From:Message-Id:Date; b=lqSxCKlXCkwXQAKoTJzoKSQu4sYp1Vf12x87Z+mNY1AdZkDWvgxpQAswIEU7nJrbX/V1DeFI0pfeGiRUXeWcfzZALrlJZjclG9Ta5HGbxjQtAzSX6hvJyGo/SmjqdQKNjwzCHKjgZaFJ6XuifrUCaIk0hfmZ/gTSQXKQt7qHoCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezvH8W3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezvH8W3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760003993;
	bh=vzgy7wHym0mcwZ23BbUFx5YHcU8feu36V8kWprRSCHk=;
	h=To:Subject:From:Date:From;
	b=ezvH8W3KZN/GXj25ye/B8JSpb1XymvKOVl7l1Iuk1lg6kMjw0c61UzZJvzn/tAzr4
	 LkKMGLyevpO3RFTxvinLkzqZYMAEnnLhCbi2g8RBIjt7Rg72V7mnKxgaHP5k9vlZcG
	 jhrDhHQpcbFJW4twbipt0+6H+j6e3WQPZHRELlbGHR9lUSR3k1iE+Tuz64jjaZdxmP
	 i5GNPUtQifTVaUQhmb9ppYoAE3Wdvswb4q7ERmoomjzwVGp4tGZt2JfAQDgoeQuGxt
	 QXLbZjermDXBJLMzVpF5ZvrwIXVBnyOkXC8ayNQ8f/riBMVfTKitp0WoVIGW5FYSJU
	 UwVXhjNCaCqMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93861CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000399358.25878.14339395851665317147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205cd5fbcdc55d901aaf70551f59af1671f9e1ab91660893295d56244ab6226d
Date: Thu, 09 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760003993
