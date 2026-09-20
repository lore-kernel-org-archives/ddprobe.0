Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571DB414DDB
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789903834; cv=none; b=RcTOkPX1iPbegUrGuxwtz8vxlLxtZLGjsmonlKfLtlrtGOGa7u4wiS9+F1J58a0KFL1SRrK72ut68xDbL7VWUkUI+2jU79Aypbei6+efic4fl3yb8E7CSxsJb9h3GqjZxDmHV+GRIAwhNROflfcmKb8oOnv/EEz4eK84g2BkeN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789903834; c=relaxed/simple;
	bh=id0D4XEr/x8wD+F+8g3bSRsiGfm0rG2gi9JG40dkc2o=;
	h=To:Subject:From:Message-Id:Date; b=EKNzQreGAgPIcFi23DJWr0tS952AK+ytVsOLHkrr/Ks5OFtqJUfowKNjj2wY4vN8ehxKqnntIn9hS1wB+Hpcz9gwqyy91K2rMaS7qTC03iuS0uoJVW1SCwr3dMkUtp7Ohkq0eUVOa+6/vG/OfhbtNI/Y0knAAJBEJEeqM4PBkcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKp+eI8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKp+eI8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB2AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789903833;
	bh=id0D4XEr/x8wD+F+8g3bSRsiGfm0rG2gi9JG40dkc2o=;
	h=To:Subject:From:Date:From;
	b=JKp+eI8QPf9eIqrKm/72wDa6ICgBDp0CGS4B8ylaL4FJnvy15sRsnfext2Gor2acF
	 4z7kPSx07aHBRJM7cRatfHcWv+/6hq2Qmr9tDFeAfGfaPZYiUy5Nj/LvrZatB+I/U0
	 RT6eYVO36DRcroYDLLUjnmUopf4EPaMzR/c9L6JER9SfkLoLC1skZtIDWQWZIsZcfS
	 i1KWh0oalXaP6jAgYgyAtjdC7igsJjRnkfjCzAKbQ3uehRgu2TkYtgXcWFmsqAZXRD
	 L6zzO7rWgbADUoHJmiAoW0HFV2dxBYHd6hVSC23LFV+CPE5bnufBcu2xEzdCo+Mx+7
	 8oYE22JQFxMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF6C982E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990383368.23208.1856180990808781022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d37ec4b3f58c97f507bc1a95d138d5949101f4330a63b415ae8e147ac6dee95
Date: Sun, 20 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789903833
