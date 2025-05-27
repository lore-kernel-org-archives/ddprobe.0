Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EF923A6
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748387994; cv=none; b=My2NbFdVMI9nIxtKtiPd8cTv/4g/s7pQvX5PNTgd0eLIQByp3grebhuuhhEkg50EMEGtr/6T2fjkHcuMlgq7l35YtAou9QiVJgaiN35o5eG0wrqRY8DM5hKLUs8/djjZFvU5c0a6+UytTe8v/iKj0mEoG1I1dr2sbTqX2eJhmwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748387994; c=relaxed/simple;
	bh=HoYJfb4NJohzHSTFKVWILzdm8pGv9G3ae3WLE3LJRiA=;
	h=To:Subject:From:Message-Id:Date; b=db/gZQ9aTc9tAYyGBcczNydp8DCc2tvvcEL2V1HC5UlehWqNpyHYRP37syFItAXc2IG3rY3DjdDI1pT3AtxAuG/JekTaO9OB8wcYJhZUTf0WihCt4lSRKL6lMRiunUsySq1jOiBS4Vm73pEl9w5XTfGKRyZzF+dEktUtOXSSzPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rt4lZMr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rt4lZMr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6865C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748387993;
	bh=HoYJfb4NJohzHSTFKVWILzdm8pGv9G3ae3WLE3LJRiA=;
	h=To:Subject:From:Date:From;
	b=rt4lZMr0p11dDFazfSRZ2dDpKI6vgsfzHgz3EdK2OqBYRufxTBAlKu04OAPbg0YxM
	 /zhioQzrAVq2XfXycTUvcl8uDYklzswhcuGnXz9ICFMxpLTLaKUlAuMM43O9ghJU7q
	 RnHMTW45T29jqt65BMII/fybRxePiZ10AhCv8Hp15qxEZL0jRsanXa3XQuJ9dHDwGJ
	 ZXvWDc3R6f+dIbyzyrivs+8nqC4rqR5alh8QD9XwPHTsRSakoLzhEA/8PdVqS7SuOa
	 AVhoRd+zJP6ZTAfvcQdDnLoSC6ZLQr4WXS0xeH8bCt+LIWDhS/+M+r3ii/bIgYHhn9
	 BHUPqvKGbn6Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9377AC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838799359.5882.3071730803257744547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58653680ac9094be1cac5696b099e117bb7b74f1defa969aed33a7750ca44431
Date: Tue, 27 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748387993
