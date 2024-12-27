Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4184713C3C2
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304154; cv=none; b=Pbq7I3Jci7BdgTEKgGN5aRKii94iwFYRrw1fjK23Qjspup1Gi43bqLKXxmdc7jzr973cc+B/UZ2DRJfd7Lop9OPW4B+Fmt7q0K13PhWjhrM7u8Vj39ZWtwG7J/MBy5oB8LkV18rnCqv2m/MTS3gvIQpc5B1hn0kfE4WqU75/7UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304154; c=relaxed/simple;
	bh=Qw046blmwoRIaDJyAJ4d1uU7lLKN4zq7rPZ9vUAXkWg=;
	h=To:Subject:From:Message-Id:Date; b=DCJ7z68DaTmGMH08I1wCgta34D3UAwJ1IsproM3RtJudVsqrWHS2gWn5R4h0JP5cBoeY0e2+eQ8uqoOLlTkdvQscReGnxm/5AoVYlcS10tbNWPfmCD8mxinzhUGLc6Xdn8hLyf+x8d2E0ZUY9ZP7oHzaiEy7fLt4+5yKBsl30V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lkx15OYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lkx15OYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17ABC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735304153;
	bh=Qw046blmwoRIaDJyAJ4d1uU7lLKN4zq7rPZ9vUAXkWg=;
	h=To:Subject:From:Date:From;
	b=Lkx15OYd08y7jEUy4jWZdblHl+iIJjFjJDdnm0wKFDQJhysKDrO3kn90trlPCaFn3
	 LfC73UjHNhDIRy++ErNoi9l8vHIk0yvGhrfoJqxlUFlVgrgpIEttBhoxT3EIKfTe6a
	 zeb9bmlvV4koSc5Nmr5MjHLWfG1AS9k5N8v0GH/HTGZAoKwxB64U7+z8T4gIPxgI/o
	 EDNuO2q+xNlelGED3Kp+0LzwcmNjoDf9bRqDLiLl/KcmPrn5Rxw0mFflH3WOHR+7Gu
	 A+KJKvRQEeSZCdufsg0uB3XY65eQzt3zrE8I7tGLKuPtqxZGcOr3GdYi7uvE+q3j/S
	 2kLzNm/qoSTTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99251E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530415360.13756.1193051526006037919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fded180b9c71d06acba214f935ab174b4a7ea8941975dea0c2d3d6c89f2f7718
Date: Fri, 27 Dec 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735304153
