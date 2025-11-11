Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595C0257831
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762900794; cv=none; b=qfjsiTWSCnVdjnNbw+f604wtaHM/sESp4K9fpoo6bs0Gxnr33fdv4uXVIp3CLENJDpH/P33GM3X2tNQs7Sgj+cQggN3HTJG+ZUknCtsxvrPOMAccf59Pi0SOymdPpki00MweRXegfqC49kppNsNsIWDJgxdbj1JZ8+v8oJGO7oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762900794; c=relaxed/simple;
	bh=EdmpYiYy7PRUEs3h48ME8j9KD3ICrnEQdOm/bnldAUo=;
	h=To:Subject:From:Message-Id:Date; b=cjWSoSW06nN00meK2YMpcKtAncgHXqoDrv76d0ZR1iehyS30+mJw9UjYpKQPN7AJdvGarergxA4vsRhnzgzDB960nZbcy141gfTwKaqYzlTfzwozEpqUdttE6/Ov3WYknDOe6MnIRznCfcqP9qxbf+ek706TdKok+633BolGYW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJd8cjkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJd8cjkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762900793;
	bh=EdmpYiYy7PRUEs3h48ME8j9KD3ICrnEQdOm/bnldAUo=;
	h=To:Subject:From:Date:From;
	b=sJd8cjknAVQQsPcBUSWPnm9NlE5nLpb5zzrxueg+80pjO9fIrdF7nISctYnclU5BV
	 US6w7BR54B7uBSEyO7ZizNp49aHo2ZW2KNkHCIgCwHWpr5mUJ3a/Vj+X7Y2Mui6atd
	 C+nD++EHhXJZgVM1DgTSEmcCTAisPepGN2QpMzV88a68CZJlpv/rQgovnq6WqRIaWh
	 ubj3oxQsqhCevr7kyG3kdP/nJ/FI6ynQ3I/mulO13ZxdIr3ocvhqPGG89+XrRTgHkX
	 Q5nuelakjLdsyFtsHh4b4pfvKR7Ol/MFnNw/+hm2F2LJpYM6eqXXU5uPTZa48CDnj4
	 lwsemgTDp31EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C0CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290079358.19612.15656765609856845465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291747e8e9c20d3ca2f48eef77fc66937d5d5175f0e3afcadb403fbc7d09dfa2
Date: Tue, 11 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762900793
