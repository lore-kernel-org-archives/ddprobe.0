Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3973723B0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738635355; cv=none; b=KPMrKqPuiUmjSe2i4Glmh1BoZu6ONsuVc2s4sYbq4KYyU+PvUqDhNUwnY+xukza01OKr1ZvLBzJPm4EMWTWd7XXp4+pVK9r/i4NIdYsnnnHf1TS6iaSrTaiXgzhJE6Q726btK2SR1BJ1V2g7apK+ApTHuICmwNT/TkgZD7CFIsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738635355; c=relaxed/simple;
	bh=v/I1JVm4FWTdZuY7QSV2zxEq6pLRMc+Tacm0YqwBsKM=;
	h=To:Subject:From:Message-Id:Date; b=XAGQdxzR526BmqQL7bLPdSA9oYDSgrELUiIjTphkyOCW4iDgKSCrogtDuOf2siZu0ogmxbU4IGLnUKSxYqJTXTCB4DZsLA6wSp8CTeaOtG1/tfb7vQCDXFfHiQ4UdeAvaqEKHAH81CCpc7a2gSgHAGlBKfstwFmVSNN+dautl2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz+awKQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz+awKQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8722C4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738635353;
	bh=v/I1JVm4FWTdZuY7QSV2zxEq6pLRMc+Tacm0YqwBsKM=;
	h=To:Subject:From:Date:From;
	b=Qz+awKQBlJF5mogiZlyBAZuP78+1pjFkB33W1x5FMohknlmqmfA59KekdTASPi8I5
	 9sUfeRHmhpf/R+nPcWbpocna19KCzWWGdEc/Ruc59vCr/5LB22S91ENqPRP053eWj7
	 hf8DO6VTp2wCTEQ7NtuI7Jjc4JaGDZbcd1qYIhE5KrSTF0zGhMNEiyTKwnzzGZwknU
	 qxkTiqpM/HADbwaS0rRQ2ZV2bBljVyrQ9+niMzBHiQ5EPGFOFukHsTFHvhjsaONwbW
	 BNPqmoK8RHf2i2lIzTgMQdUddxUZPCDMRpQPfCaU8uroSi10e+uA0WEtiABeDJBPpV
	 P2Vj0MDb23Ihw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119DC02192
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173863535358.26059.9147668606230954682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1dc6429c423c511fbac326f760a0976a83b4f2ab04ee19b1bdee5ae3ab73afc
Date: Tue, 04 Feb 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738635353
