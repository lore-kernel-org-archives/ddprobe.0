Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38098218592
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779799954; cv=none; b=rSG1Z+VPkRiVAf0lQ90uBwv5bc3q2r3mhccAxBXJThuqvmt91TlaxAnzTY5MAx3QQi+NiJ79TYaQDoO3FEboOFDI3JkcpuijpIZb0ueCmEx0kpe5tb3V8oFC56kx76zfpoJ1TCAmGTCtpja9iDirnVY0ncnXDAAm3tsqlTDvVEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779799954; c=relaxed/simple;
	bh=G6hL8qgGsCIZD8MPzmrvaqAXO8Mv/nVzbPkhFbDpFY4=;
	h=To:Subject:From:Message-Id:Date; b=nKiEf3pNjMHJkyGyL05C3LazL+j7bXhdj5MtMSmKnzVN1jZOdW1UKWrqZyUVM2PHF1H0B3TfPsvoQU/Gah/Y1En8Io/1DGWnWEUvorTp//NhtVxanwy2cod00YyJPxFX6XoDJB7ZXvDeVSPc9qK0O+FoxLfW/A0S1ZxzaTQAUEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC5UkCTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC5UkCTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6439C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779799953;
	bh=G6hL8qgGsCIZD8MPzmrvaqAXO8Mv/nVzbPkhFbDpFY4=;
	h=To:Subject:From:Date:From;
	b=AC5UkCTIsiUE7iCnpSjCRGW1xehBTBqAIOt1TxXO7CM+51BQ4xTLKO5ulLfsfZdzw
	 MSIDTLeuF3cYgRmuUflYR2AeYOLGu7orh2ESn/klcvrRdQdFmBHpVDEuBJBqZGvemj
	 dsiDoz+OLN0nDCYfpvLY5SzTYmrJYsdHWCBF88KA+CDARc9n88q7dJNlTsthy/bN0m
	 d1H3qeZdueLD1o9RSYFvL42YVs4m2aAdv+mjpPMV3EYC5nqUg6V324lfE3VLFkQZVK
	 S9HIQtMPkRfFlfFydziRJ+kT+HD/cR4d+ux4jwVreQ2oxRC+fSidxNAVrDrx2NkmXh
	 csP3BmQM6dZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B9CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979995369.13053.11590514010930461135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1e4183a52a7db36eb7b748485762ef75edf0e9dfa677f9fa6ea24fe00a0e9c
Date: Tue, 26 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779799953
