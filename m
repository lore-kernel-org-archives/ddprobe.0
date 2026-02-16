Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 005A11A9F88
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771231494; cv=none; b=EWbQ6vDob230G7/H/EFQiO42hguTaTzcCv/3T1CrQk781gdVVyHsQ3yHOLPP+vHxTbZYAFQ5wGUQx9kRLujJqVrqHqGZ20nefjK7kGWm213v5S0tpkuP7VGOtTdp6U2jHQoxnhisRhJwXcdnwG3/KaTLo+l7QFN9ba9RKHxcV0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771231494; c=relaxed/simple;
	bh=SYJjt/PBj1xqaS5I2IYiF6yZNstiGpA3HpLFSpGBcu0=;
	h=To:Subject:From:Message-Id:Date; b=TeD2rjl0L+XHQg1jrk4X8R0rSz90L30IYGCCB+aFeF90I+ObkgFpPS8H+qIVzbyF2MLEAezykzCceqtqsTPFDs69TWyn0bdaG8q1LN+jhzdByws20GOKX9d/m25Dzm8tPCFH7GEUo/FZCdqiFFvM/szBhQvCSq7wRmT+cvTg4PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMxC5cLL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMxC5cLL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D28C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771231493;
	bh=SYJjt/PBj1xqaS5I2IYiF6yZNstiGpA3HpLFSpGBcu0=;
	h=To:Subject:From:Date:From;
	b=BMxC5cLL8ivS9W0MVnhozth60lF9CcuTATa+lu3v2/qcaUM7GL1tKKKvSvkvp+iLw
	 dnCeJcu+sNzYjZQS1VLJVprizurSTGgJk6p8vJ/Y+je+9xltzrUJHjGUTGmnEtXlWd
	 OXZsHH5r3I5m0fVXa7TKbAbAGiBWPXR+YRkTpPLixjduBm50y5bKRwVzQMDKo8yXBW
	 ZT2Gv4AEfSV6SDRzOfcaQxoWyHeXCNMlKSOVcqnN1Ra7cVgttAvoNM8R/ISZmMDYHq
	 R0qSCni6jPlEPGZmewSwdK8cvTUBC1WujFzjJk8UlIrRKd4j5D37Ve+9+gtSGn5uXX
	 Yl6BXbVt2D5pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95148E63F37
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123149360.13066.12964417594645625279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8bc16e419e563134663a90ed6792f74ab1d7af89b703b1f145eeb02e5a69ec
Date: Mon, 16 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771231493
