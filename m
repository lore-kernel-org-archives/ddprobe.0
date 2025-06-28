Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F5813B5AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751105394; cv=none; b=Nx5TfaF/UbI4Z7iO1X+ph8Qau1x3lEfY/cfnAAAxm3moXwgk80AdODhMTKoNeJZl4r9eM8aDPM65hl6I9s7kxwM9l2zr8lZDJ70C1wVSRiQcNFjmwR1/nLmT6E2xvpdGMIfRQuBfXKu+zJF6fqRPSIQWN8WYA6nETtF6zIgtykc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751105394; c=relaxed/simple;
	bh=5LioPWQdINT7ck9JMkOnFl/9znK8Ms4TjoxXElm+Epk=;
	h=To:Subject:From:Message-Id:Date; b=M+7V4Vs9pGeoJmjZIcq7/dezhbIbQZxjUUJJpzaNR/Km6V1jssiz7xkZIb9Eug3RErWLrRt/dmtIQstpQa5l6ePrPao1LFdJYoXQsY9EtNnX92fftJa9MyCtpt9hckzrGZI5OHBhldcNvMUBlQkFB0k0LME764Mn/RP1q15679E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2YY8bh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2YY8bh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB148C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751105393;
	bh=5LioPWQdINT7ck9JMkOnFl/9znK8Ms4TjoxXElm+Epk=;
	h=To:Subject:From:Date:From;
	b=Q2YY8bh/eZ6kjkh20IFUp8yNcaLz2q4XOAdd5V7iOhft0dardVjexd44bb4S/MQ0j
	 73Fw9dvBlt4ERS5uMURC2Bsg+FFc4CXWFcbRdVVw/PdrBlciiz/6s8uQG94oh4Y+Z8
	 LPALgUSonTVB/NCOAffkFfSq6XxUO48GTgtQtihRacfWWaeFmWd6WQNmuHvwxL+tVJ
	 Uf+22bBJYGWRrI48RdLAKxlR7g9DsFIJcJ1gxh5hQbRbwcYt4GlgXCkUEJc2uomG0j
	 JZ0xeI343FiQhMqspBa/rw5ijXNNqe15irwOlZt35hP57lf21+Vrj4BCLDEM3pgIHH
	 Ma575xQAkZdEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97555C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110539361.10250.17940114467575251945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7af8198552ed62cf0dec5ee52cd99792a115ff59ed7e4afd8c952132ba5e1a9
Date: Sat, 28 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751105393
