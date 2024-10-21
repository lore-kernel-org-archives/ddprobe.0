Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC4712E7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729475754; cv=none; b=kiOE5tIg6sKhwCE6zhA+2usQv2OXRbAH9sin0B7SMDRCaB1AJ9fRE7mImBaUFGoSumPVd7tIHFMdH/fZmMpD42T4h/fkroxXo9Yd3unRlAOkdd8b+br0Y+WhzkKLZ0hNlgV841uFwl63gSpxj2zeRNgbEt0YkGnULn2bInIMA+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729475754; c=relaxed/simple;
	bh=tUx023rt37Rf7GW82gXt0scYpv7+qZ3f5xvEr3w0KIg=;
	h=To:Subject:From:Message-Id:Date; b=f7IAvsjnQPeAp1ww+iX354OoMtMBj+47aDzwoWQ4Cp1wVm50DDFsOX9UuDHMknxREC3B1EobjC0cgir25naQPjcGv37/jBXQcEpt2Zzr0OxXXgcErNlTNFRIZF5FfVGxTym1Cp9f0Udg9UNEWqBes8+hYYBv87rrddwlS61QLNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aaw/PGsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aaw/PGsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CBCC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729475753;
	bh=tUx023rt37Rf7GW82gXt0scYpv7+qZ3f5xvEr3w0KIg=;
	h=To:Subject:From:Date:From;
	b=Aaw/PGsRRALcECyc3RABJnj6RjqRykZt6QHbak6sh0FljkQLqKRuxD3K67VyNRD0p
	 NtC6Ibojo5WqbwfBF1w/PnGRxMMwRrtW4OCLiOCvV+nbCJPa6GsmHDGwaPSMOGNUds
	 vmsvjLve01wKyOmxaPfHmt1oAS++3/C76AAQAD/NecwYb0lgoYEM3+t9lvrrEedwMX
	 +TQn7riP54qqNAH2/GgKuJ2CGigHVOlVKrwob8GdUvmotY5c6l4qBYXgQYEmU80CO9
	 s+ppCwbr4TfyHQIDVU2m7nB/wsno6HOSM1Qk/Q4uMfkuISbfJriaLkqjWr3pScFqWk
	 JfcO/PP32jiow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926DAD3C927
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947575359.3456.14425273706424792440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8367f80a813c4b910f1ce4c15443c35681ffb6a2d7fe25dea6f9475f66476fbd
Date: Mon, 21 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729475753
