Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF8018E2A
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742538594; cv=none; b=Sobje1hf85+c3n1l5LW71VR4N5+vz8JougSyYrdC7BtQ99JJotQF9Wrm7s1jgBSWau7kuDT0fVvsfhiLPtSMhJgRDj/ehmHRWgUhVfzXRafDvrxVoHu+mpzg/JxnTTllV/k3Vq8dcW1PegnfAWAUqJlA6N29IH/gZIEwOBZKP3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742538594; c=relaxed/simple;
	bh=CcJH+kN617/pUbXt58SPqC4+z6ADeJvkW0DVl0hBT6E=;
	h=To:Subject:From:Message-Id:Date; b=Abwm6x4RmmzfFjM6sve40uMJaO23kUgDtSJHrSMxy4XUkOnjiqg84foA8hsAcDka31wZySU+5wNfK+Teq3OzCxMCmIEuVX5DfHq2f4T2u96pGGGeGggkLwQ3071MZF2E8bVGINdD2Gld1WPHY3VgiJhOCUaGI1IzfibX0YAMoUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LirE5VFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LirE5VFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B0AC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742538593;
	bh=CcJH+kN617/pUbXt58SPqC4+z6ADeJvkW0DVl0hBT6E=;
	h=To:Subject:From:Date:From;
	b=LirE5VFpH+mq+E+VmCA52ndAEMllBc/EHOfbqY9ruEd2LpHfsIwLuZoAXAg5PBiRl
	 bg5xlYCNRz4/GVqUK86h0VcM+jUJUMIifivzjWG+Ao5g/Kwq2TELfSml1rXurys9UG
	 1g7TwP59SlSl47ea8+hllPZAGfUee/kmuqWRjUQXMp+6raQC67/sGitJakFoxdheR6
	 Is6qdxqcjmejBiLAgBVEuLZG/g1/bEwB4sZ6dB95VfG0ob/va4ZSmSQ6xNZwiqd9eq
	 GGXSHb07rPK9BTKlOVM4BhsRWLeaNlD79fTvDJDRvM419RKSOrivmNwsES+XKHlkhG
	 8W8IppCztbWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4646C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253859366.3330.16382276312848004231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf831c8e267cecd6bd5ae5f82c152655b5c4ac9b3bcd8ae7dff40e44f2befe8
Date: Fri, 21 Mar 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742538593
