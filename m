Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2664AEE2
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757558994; cv=none; b=hzyzk4dmtKT76OsC90erK1xD9r16QH9b553PdpN0zSYIM8g5VgnXCpKZO3x3kH5VoWo1Vn2gF5z7H/kIhTckFRs9Px4OYJF2AEElTS706VYb9gZC5XSgmldYBWfpWoR0lP7cVrGcFo8ivX+FWhvp7f+oBDAjQPpALVBIVl8jps8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757558994; c=relaxed/simple;
	bh=rzxT4KcVs/DWFYfH03rasXBsfTThSLZ2uBo4DBSVYMQ=;
	h=To:Subject:From:Message-Id:Date; b=cpnVQ6IN/b9iizWuX2zjU/bCg1KE8tYoK/0ej2hlnCxVP8oKMtrnz6LfLosZZ64o3ofhjXZd59bXWG3FzU0zuUBrPs2u3oxggy+qMcBSPO3Xc6/3ci0mcbRldUKmj//GZTduhskDo/Xci+AGdW4tm15qq5mfjhc9Z1GDuoVYyjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIuq9SuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIuq9SuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB96C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757558993;
	bh=rzxT4KcVs/DWFYfH03rasXBsfTThSLZ2uBo4DBSVYMQ=;
	h=To:Subject:From:Date:From;
	b=CIuq9SuLdarZCKPw9lWJPNWg3mXXSH7MiUcc9uR48GChI08zPM8TVErrCeOIDmDlR
	 k+9TygQjF+JtapOGmEj+X3JuuSYvcipN47WA0kz8TRz6JI/LN7a2/p0DqQ1mih374Q
	 qtO3GiVK5nU9P1BS4Hngw+3l5OT1bTg20ew0lnrOb3aw/0/7lRWm8kG1wAl0lwNRSK
	 j1GaUyU/KgthlRxvhLL9Fofb6jfouIVTRpEkmoZbPd6KHpiag425o47lxyiCK1Tod+
	 G4Y3ZtkRznWuhQgWE485R9YoGqNlECMejcduGKX2uX6M568rz2hAk69YBJXx5MCZzO
	 a90c1S8Ctb7sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F3CAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175755899357.6067.10916586769513050043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deee7d60319cef2da1404f1dd1bbd00a01d27d32df93187752799bce4b81968
Date: Thu, 11 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757558993
