Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D112BD59C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775981254; cv=none; b=G7cd4F8wg5+3aynzdQz92sObVzTNr0WP8S7mgPZ+CXt+JGUp4rWyswSOevecJFFMe9H8BKzjtxh0tDBga1eScmGP+mpK49tDs1RJa36hYb+5GEQbtMTPMiXNWwtYQtw+ul/HcZ5wmWx3+HTOTQVU7gvbXYnrem1//dyf0b9cdfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775981254; c=relaxed/simple;
	bh=QF/Wa1vASy6FLIHELQyATjDKi8tgoZ5gkiJnA9cBFaw=;
	h=To:Subject:From:Message-Id:Date; b=bj7PKxUaMH+fOtboratLf2XiujKx1oW1hosCUsG3jnTB+OwfvSpUeUhE85go81r8X2k0f8NYOEGvmbdCCoxmV0SLoi5+5bu5Ikenv1LIo+XY5i5M+EVaE5TKYCyo9+ceSsIzM6aPh38AmLWhXcKppmXm9UdKUIIBA04gmCHRUD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X92Om1kJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X92Om1kJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C180FC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775981253;
	bh=QF/Wa1vASy6FLIHELQyATjDKi8tgoZ5gkiJnA9cBFaw=;
	h=To:Subject:From:Date:From;
	b=X92Om1kJIS2hUxCxOhHhQzmfYkg8w6C+oIKOt0Y7rFNg+wQpyq2YMClSQlREWt8ZV
	 mpdQBdU8LqtKoaegf8m44Hg8+YkAxCnsAvgQ2+tTTYz+UBIDrEVC6NO6VVMp+PVdvc
	 t1X04T1NQHeI5aUhKqrT8zkZDF+Y8qizocy+hnQ6/0Bwdg/1myb1P6uYtHMVYVvBa8
	 Zcms7KMUM0Wt5k5OUiMX3ApdGD4eShWhp6SBZJOwuOk39VYlx3Px8SS9ufZtdCJvrq
	 msCHEaYA9ydAWRErDwKY5e1NyBBhSv6n1JpaYXJyPMebHuH73qXAo3j0vO7mO7D2w8
	 DUISQ31/0sbvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEBFF3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598125368.17233.12763770767417397396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fa21394b934f1963b220a0d2f7bae50a656cd02ff61543336b578a2e7ee652
Date: Sun, 12 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775981253
