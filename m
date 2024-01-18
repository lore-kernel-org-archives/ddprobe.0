Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0133C8BF6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705546097; cv=none; b=Yx7RnM9EzIP3dKEoTyf3SytR5XWJnE52imI+1XXOxVbzr+rRSutFUlwK7b2h4qxUte+/lrzrfFQ5MeSfV9CE/NawrB9miOwh+UZ1oqdz83Xf0jhgwkjQvkngE+U38/abAR1wf1gthMjhIGCnjROXFQ6GuczHdOwt9bAZ7IUN0RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705546097; c=relaxed/simple;
	bh=tB9ENPNomG19q/iwJtpF7X5ZNu7B6chI/9sabFDYzy4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=NSWmm3x5vkp4xodfWgIkI78Jifd6Cb4IUJ3ZKttXkvobFxWTaYivUOgJLi3cIw3FB7OgPg4KYyy5WsLsA7TiBu5+QieVvpw35FR+VnjGB7vhGROModeYTB52/cH8k7DlMqHiR//RqCAHJhVQm6dV7PQZmMBs082Y3PTVJUZx898=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUCfEA82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUCfEA82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 787ACC433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705546096;
	bh=tB9ENPNomG19q/iwJtpF7X5ZNu7B6chI/9sabFDYzy4=;
	h=To:Subject:From:Date:From;
	b=JUCfEA824T4cx9SV9bN4izhpIkeE52kxlE/6vgVy2bHxfArP5qmmjsQMDdnBjPVn/
	 sD7Sp079FQTTWjEkWG9GTMKb0jYMp7KME9NetHCNCqqayM8rG7BMwjk9rfOulQARgy
	 3zX7w1/K7JjYjbY6/8M0d3XAVAyxsqLQZ/jSs+kt1NvoKlvt/CjIy06D9xjO/a68pA
	 HY9JK5+FSvcujWJbVb3Xmi6oTUClJzhrFsybkcGSGbj3UsHoWgJz82nXkR/HH2yoiM
	 +XTQEGhClRunPBsDCWNMlI26d+KCTx0yofz6U45l/hlLNwjHsuueRhwF4CdAieR6/t
	 t8SZXhW07OlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCF2C47258
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170554609637.13624.10665519357504866139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4f73be2349285670c20e29d43062714303d5a4f70da985bb56298a5b214213
Date: Thu, 18 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705546096
