Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D2C27467F
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773801894; cv=none; b=rRnViqp5Uxfb/hDzSaequRC62aVSbVAOQLWrIutihNEFwEy1YAvIUAH7jNky31PMgvhXZ3UJgdBc3BIBWpmLOGeLdJKNK/ZeyG76suR3VHJk+cj5yu83p6B6HCETg2cFzHMqPcriVuh4QaRDakVJbheA5fI6LRfLVX59e36kbxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773801894; c=relaxed/simple;
	bh=O6sOhpHAxVSkcj6wA9+EtC7vhyvG+WmcOtsKt8ase90=;
	h=To:Subject:From:Message-Id:Date; b=bW/Emy8cN5vOuuPYztaDs06ZrdrJKUGBces+eEghrK8QPYwXQSv1RbOfl1098o/iWSZ3XI5fGeFJ35O1cXebI5kSCw1UR1YghcdngBRkFonjtZtqABGp5nSucOx9QtmKkzNrgN0B/6erucFKwk/WEqnvdjBRBjFBE1lzdGbWpLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiFyT5ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiFyT5ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4679C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773801893;
	bh=O6sOhpHAxVSkcj6wA9+EtC7vhyvG+WmcOtsKt8ase90=;
	h=To:Subject:From:Date:From;
	b=TiFyT5axuIoRk4EeS+1mH7N20T6q/kUqXGs+tCLMMpKulwsJu8NVkyQDJ+gLlQv7u
	 4rM1WWYzBNaMbtXC2cnhQKqXegb1O4vWVuqkXCXccmgNAwTGpacLzSj8pyKtbprABW
	 B3qhBiXb5xAtjwKIlEMxCrLYsUxqNMb/IDJAg7rsL9O3RczELomgzqiOaDRtn3w+69
	 1e7oclWRFn5G1Ze+jqjnKlMVv4YtuX0yzleZqhjUN6Vz/xUq0eAJlLfnGOVvqInw/l
	 Q2+T716bLTWclwxQghoi6Zvkha0qYqtCZzuRzRlS4cTkdWrWZ7OYtEsgjFW6eZ2X60
	 6x98HQi804JzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F710854CD
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380189359.7252.9655029507762457159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edee97e8f100e19fd991a920d192deb519ddb14d7ccad0bf91c7de1a4eb4cb1c
Date: Wed, 18 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773801893
