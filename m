Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ED4221DAE
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764904375; cv=none; b=OEtDEgYUqK9ao7TeJTzzYIxSgUYgj8wQA1YTqW0PksRwUoku6ufcrgHcMg0VGIpx/FHcJ7H5JmppsI4f+HMX5lGam59SuSqFG0RGXaJkkXy0BVONI2QNRh4GpUP8iW9yNin0TfXRkJ/HyceOuP4d7QvbzN8IV3NkMnYq7ZLM11g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764904375; c=relaxed/simple;
	bh=X4red4IiEwqJzkML0j5q3eLFuCQEAiA32BIGvtk+RWg=;
	h=To:Subject:From:Message-Id:Date; b=DwbuuPHKeHN+JIbely8toxjG9u/61ILw4ZOX60n9vHu+lbTGuD7ha5dE1mbHr+0ngH5MMWVVyXJqmwLb1k/ugSTZkdvOsCb0SAVGrHBy9lQz4Lc9CaoPqdGP90JbWIZNdk4gVpGdCAe2KIPhhfU+re1HeUNvUfjFTtwD2dAWWgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4LClnXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4LClnXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F0C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764904373;
	bh=X4red4IiEwqJzkML0j5q3eLFuCQEAiA32BIGvtk+RWg=;
	h=To:Subject:From:Date:From;
	b=E4LClnXOZWYNI/DQGfksCKXrjT4heQqbKzoKQXhVbsOD7+NoRM2sxMAr6BsfJYYz3
	 +XqcJn0EfrrL8cicT+9VCD7w0T1v2k3GQqJd5qbqB7MjI76vCpk6DjFNvj+UvL7CRr
	 ZoyEQpx9WgDFGs0brQJmEvPKkx8fdwWfswcy4XBt7ThEEG+6r+DltKX7AKX6wJ1oFe
	 P6XLrJezMjH8c33xSdoi6cVMW5EeL7FuDztjQqcmEJi008c3Xg9TcNNz8jqkwCm1pq
	 dJZ7EFpd+saC8DJO+yczun7ze4IKMuBa9EXSZHs1QT1S994PPmFT9aPhBf0VXSlouN
	 UoR8iQez6aY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ADED2CE16
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490437357.30495.2649507340128996736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bb68b893408341c0a9e4426b6d74e382ffa33c32bc8929f4f3a40788735151
Date: Fri, 05 Dec 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764904373
