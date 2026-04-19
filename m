Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE8A2253EB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776593254; cv=none; b=JZ1c+VBOtbxo3o7MViv3Ne/OVXj5Qz7Se6xnlRFi5GNAvae0+kE5IdfdvFDlTUdU4C9EgZhIhj4gEpygk2HzJEwcl46lOv6lZtb1KQxPaSBy+RJOTQjf8UT62xz+nNDuTPqxuZ6TpAbUrGPLUZ33BnEY307wSnipL/e7zPNyNPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776593254; c=relaxed/simple;
	bh=wInguT1HFWdsEDtkzL/zUoqzhpZa75pX7hzs2Ghu/N0=;
	h=To:Subject:From:Message-Id:Date; b=baZHcaG5JCl6eMgROeFHAd0odceJVyt7yJj/Xzz68kxefC8oSA61S2iF6aNR2xgFE1ixDdYx1ftftVLgU1m8ejHnH9x8wstjQwpL0SvW01L44qPUaiUkki/VRUu+VsLgif/+FnrMjq96nbpVqf/qi6Di1yCpGptPSPV6HGf0qGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX6jer45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX6jer45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB48C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776593253;
	bh=wInguT1HFWdsEDtkzL/zUoqzhpZa75pX7hzs2Ghu/N0=;
	h=To:Subject:From:Date:From;
	b=UX6jer45aiOH/4CRe/KgHvUD9cPtpTMjeAIYAxKHJQTERoE31uP2/ykFHc5crk+w1
	 3SiUb8GEKkaGitQu3JbHn0vCVIKhqJDejV61k1yKnzrMIZ6LTVpe5J4BeVOkE91N+V
	 nfoJ6LxVYgCEZ+Um+uu/2K6nCATpWVoJss1LbpV2a6zOFHV5ANxuHmbLOyJfRqyzQo
	 EMyEx7lnKHxTutc2TYkQxEo0pGLR8Bro7E0e09Spjesb+lSnRDeEvo/puC0HGq5iHB
	 n9zsirRMs04p20Ng9H7Lz9xrwhln1nXQrxqAfCfFEygWwH8V5r3AXgjfM1Fi6igCVM
	 3ZMNqKbrl1rpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96E1EA7194
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659325368.13970.13436773436880323758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e4bbb339b0bd953bcd9dc7e93815d56dd5dd88b16c86c710d450b3db86dd1f
Date: Sun, 19 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776593253
