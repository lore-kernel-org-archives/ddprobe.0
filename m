Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5404FBA34
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738408555; cv=none; b=QfkSSE3fwrQeNdV6oUkzDXRYTTjfA8gKY9e9qrokCWXbmS6rhv1I/h089WoJB4eSuxByWsgOT5qpYPuuHtjb9h4C12K9hGfwuIMoQ5xsIyUmfThXM0rbemz/0ObE+ArACWDHdYHUP1uA1v8ym9EtNJCtWBokP3kt4J8bz9MRNXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738408555; c=relaxed/simple;
	bh=x8EAd6mmMGjM0/e+82664h+9avogVmVO+Fb1qxEjtlI=;
	h=To:Subject:From:Message-Id:Date; b=Im7nKEWk4Ndp2TNQbuzl1HUzlgZWlpB46GFB7h1qNYM8+Dx/lLko/lEcg/7eQjwHmfyab32SGWY2hep8yDIk7IAUVS6zkgOT4OanVIFZs18dVuGyBegGd5Z0ou/L6dtMiXzpfjyRiXcAqfE8+a6CIp0QnzutmyTVZp4bFe5hsIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARt7G4jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARt7G4jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ADCC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738408553;
	bh=x8EAd6mmMGjM0/e+82664h+9avogVmVO+Fb1qxEjtlI=;
	h=To:Subject:From:Date:From;
	b=ARt7G4jYfkG7kir7bpBf+zwRILlshj8K57orHVUV+rlm05rxyieJTXrbMLpLWwSxH
	 kDRHesLMcMvp3UI2LREuwtWmLgIowPKLMAGztuYPbAmowCXLdHC0mul3dXFx1M5zqg
	 cOo8v7btXl2M0a32/OlAyaM1IBk5kUcek4h1mlWp+tEibF2hzlm46c2GefxaDqfX8J
	 91QX67uW83G/4JgIgspRXIWa4Wzv3uFlW9QFFxocUGwo/YqmRaRMlRxOn2SF+IXXCs
	 z/aNL4ckJSX/CC0tOfPOunERPOjt2PMnTi4AxkNZtNpJIfFn+xcpX9pSAaeCLdfK7T
	 kbPsgOyAvlALw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C58C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840855362.5402.17924769816167077583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1460cb82b0d026a137453384b16c5e4ae5adb4d24da287f80da68375fbcf46
Date: Sat, 01 Feb 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738408553
