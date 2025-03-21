Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E54F23BE
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742517595; cv=none; b=SIgoKWhMq/IGRwUoySW8T9lSUqdcEJ0eT1ifIgSIYMkGhgPM/DnDdeTWUls1Iw/L94n5RsCstVa9N4HXbA0mPynMTQEX1jCqOEGa3O3doUwICbGPTgGgPIB+Yaz0uLld9NcsBhuXK1bAw5fjVVlwexILnrnvPn9oqUKvMEUqt9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742517595; c=relaxed/simple;
	bh=k4RNACq1SOGK1+sYhzbo09wNVfC9kCGYOnQk1gnYQXs=;
	h=To:Subject:From:Message-Id:Date; b=lNJGuw1rFwgu/AzsSmM8gpOFD+D8nqYEApX9///T1b/6ETwtYNhFkw2nEhX9+sqcSaTTGNQibs04aw1Z3wBXWkq/4gt0aTusRkyvNWO6MXif/chaaE1atT5Z9siUT1rDQdwvcFpZt1+pHdN1yRFFqsQnK/WT00OrWzdXrLpu3Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpDjeYZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpDjeYZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB58AC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742517593;
	bh=k4RNACq1SOGK1+sYhzbo09wNVfC9kCGYOnQk1gnYQXs=;
	h=To:Subject:From:Date:From;
	b=GpDjeYZaPaUTdvANbOUeYIfcwT8DQ9u9lMwTqoDflbnEwPkGn+uaZyGq1ef1omPT0
	 xmUcLb5f8Q1HCunGaQ1wxNbu726edLrRYBK6gRtwUJtgN9JWSv1uZtNwiLp/51R5Cq
	 WviUzSkFEEMSrgvl5SJu7oRIv3DlMTYdBPC5UxqgoX+Pjh63Mi7bZ1sYyuh04Dp6sI
	 Rls41vCNOA2anxPFJH7axamQ27L+3l+8jHsqkiJBQRn8x5cMIiwgFiRVPp4G8G7Wxg
	 naAx8drixJts7uQkK6X2Wt0W/G/+mTBWRcifH2iSua9/IfSO8JNCkuxwJvXrLo+l+5
	 ETSd2ASRCXTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990FFC35FFF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251759361.21282.17347051794788824904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4821f3df97d94e1d9d6150e5129c6fe3a5a2b863bfd1d9317d8024b0b6c6e16
Date: Fri, 21 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742517593
