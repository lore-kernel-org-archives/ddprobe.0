Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED21A275
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760057394; cv=none; b=li+c+trNOsvpgt6cXcq1eglvRUe5tmZ60LFQekoSDd/GtS93ZebJzDiSMFs707UArJLJEo5SRjFoKHMQGc3l9g/+cfXmkMiM/hEo9TUdiNNHC+GiyHHmvs7udI+xDrpbEVjjg60bC8ta+XF2c3443XFL9xOkXQ/WDvCGZa16IsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760057394; c=relaxed/simple;
	bh=jwgzSdIYlhC9VftkvvvDbrTfrR5R4ADkPml/ylUcsqQ=;
	h=To:Subject:From:Message-Id:Date; b=U5GR6X5HORqwMSzSfr7iGIWeutzxkG19NkVgaBE4KqaqE0SQAisAuSGSZ7OvQavIhMO6oZVvblXyPNgIqUPI93vCeqtE+jnxeENUSm/NDbPWv8wFp63z3j8Ka46A7F16sAu26r/nA2AHGteqReBTe7lpglx5ccDGPf4okpHHyI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wh77DBeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wh77DBeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760057393;
	bh=jwgzSdIYlhC9VftkvvvDbrTfrR5R4ADkPml/ylUcsqQ=;
	h=To:Subject:From:Date:From;
	b=Wh77DBePVi9wnS3V7/BkhyGJ+srQTga36gWpytebfVhN4MpcOHN/BBgRjvk+PmT9r
	 wlrjOEWiJqiYeuCRL6NhYuQJJTdfa7jWmeEDqPRqW4XaIN9ZQn1t2mEyYUhL2M4KCz
	 7U8+BPNJrlRT1OPqpl99kZPqI5f2q8OPMrhPIWwjchMtVog8O3yAM24nAujZb4LFS4
	 +E+stmyZNLY40qaNphKiAgqfRx9ueDqCvuNG+mNKBEhVRBLJSFtXE35UPKIeK7bYn9
	 ZGIN5C57HpMGM03Bm3FuXk8a30PYZycBT+eK7IyOPASxbxxPOey7ah8ncIabeOBfaV
	 vA865rVnynJ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240FCCD184
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005739357.31342.6065831322587910771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b87e4aa44f5c7bee4b334bf42abba3b9eee7e438b9747f191bdef6969b3d49
Date: Fri, 10 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760057393
