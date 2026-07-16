Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B15C343D80
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784196514; cv=none; b=bwtJkXWiN7XqqctdoAlG7ox47m+iR9bvVTSrYj0eWCE9G+TcbXfk5eZxwRYxgxkmzBLcG+/YFzzi8oboxaZrSozpbKnl4UQOvwsuUaiiNp9nUxvS0BV/dBaNZ2favUVPV2zITnNIvroDfUIWmGAeDA2EMCFaVIRP2JPPVvTKx38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784196514; c=relaxed/simple;
	bh=tUkYLZ0yoADoRnWeAxGEDpC8wJW3H7w/3aufNzR5mKc=;
	h=To:Subject:From:Message-Id:Date; b=ZKwhgwdUZ4KYyS01kqJ2XWH30jNmRisy0RlDh+36B53ZjPFI+6Fcyj0UcUe9xD9/ELEMhA+isBpB0Ms66XlZN0TUeiiVSbQkeMtVYUSYEJrMpfUN33i0nosbdqPhleIcfzIhCmo+xTELl5rNW+7+m+NknYjRMarfOvJNEiHkeiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuLKW9S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuLKW9S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE8FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784196513;
	bh=tUkYLZ0yoADoRnWeAxGEDpC8wJW3H7w/3aufNzR5mKc=;
	h=To:Subject:From:Date:From;
	b=NuLKW9S84/ts8fyh3CnjXYwRhIzAEtaEs42uEX3rL5AYelnF8uxZ+yrcLLGJlNZGh
	 +k8HLmmP9QkZGyCulPPzKb/a4TBPl2EbCceZwfmSzbagVQCGBsPF+9jBd9oZqRN030
	 WWel9fx2lB18WgsM6mu9SegqlYfY9bRTFbopWJNSHFEjoFrKiupdG1vNpTPNE5M2Yx
	 5hgSatbMlFvzha8bbHHTok6BCrZnNqGXYUVvA4fHzy6JtAR5RN91tI8bo27wDMoBtc
	 4M1bo0v9sCWJIS+8668G4pSKA4bXIyOfwn3TRwXq4YR8zytVikS5DvzrenUkxECNwK
	 BFoEZ/wnf/1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B0BC44501
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419651368.8031.16537835225442413616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d692617d7f885e613db858061ebeca2c6161019e72a7e3e26b4166dbd3a2b34b
Date: Thu, 16 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784196513
