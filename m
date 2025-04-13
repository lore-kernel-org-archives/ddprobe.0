Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAEE1B21B4
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744554594; cv=none; b=Lun9dU99feah+sM+HGu+eoM99e1mQMuAoJaiZTHEfrlfgWpiDdsD4CMZ2F1UeR2EJebkXsh+KqNyYVP15vEaQ2Tg8i8LRWsk5b7VgE1ZZYmYGXtO4mlqKKRzr75Y1TeCQnYJEtz1ecsaFjyXPEKsFd7cQGrDzf7/mgktsI6JLyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744554594; c=relaxed/simple;
	bh=ch+a/JPVAAKmlkPi22sYpyQ32aBa+xZm3O7y3zDy7X4=;
	h=To:Subject:From:Message-Id:Date; b=k+Cbqud2XbeH51zgusN3qlmEEjNvkS4S95c1MKJ4o0bEArsJhdgpvSJIjDsoItYhbrI9eaJeNmdjk4zZx52HsaBjNR4ps3aVFc0sbDGZJZmkS0Vp8D1fWi+rG2408Tvne7yaigE8B29E+PeWlLxj1CwcvEJBNQc/9tj68i/5JaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gnyi1VZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gnyi1VZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DE1C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744554593;
	bh=ch+a/JPVAAKmlkPi22sYpyQ32aBa+xZm3O7y3zDy7X4=;
	h=To:Subject:From:Date:From;
	b=Gnyi1VZVNfIviVFwfln7bKIwq7GrTNL9hgDWDRwh1zc0r23QWWe4LFL2reknArENh
	 5uOraCa06gNtDRLdDF+mvO9SWNJIQV7d623F1hz061cEYMYejjzSkXGT6oOXPUUNEw
	 zqWc8uKQ8PKca33qWyYj6BKIypL6qb5MTO3iYhKo1amH8AO5wb4soF8hKTxN+50zoG
	 ZT70PawwTOqxsgw80vwZFZ7Y31mb30xSHlBhU4x5q4Ozyg1M1hjQM91kW4Jh4V9zxH
	 UesP9u1+NTy6ejrIFwK5MtkqSG7HsU/kt/EEoTfL5fHY3fqV4A1pQeWafXXB/gCvdE
	 CL4yQCD2qfl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B400C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174455459360.17231.5643911099890932682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e811cd28673b13d8ebc579394eaae36e2d986ad85ed7b81da84a8de42593b7
Date: Sun, 13 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744554593
