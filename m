Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FD218C33
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771709694; cv=none; b=SK6qtAq0H5Tk9pMp2n79twZ+ZKQY5GVA+kEe7aQ4PFWyXB33dIBp5m2J+IEe9bOxEA8+pMqszCy93zrEWYh3wkvTLC568NllkUJFI6jmpn3XYAAiYO5OeLpuP6CiU6fKNQIvhexZGOrx0qYINtZfucHWrukbvooyP83WuvxKs6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771709694; c=relaxed/simple;
	bh=yJQYCdkYZi3yfxO2JtWQJrqqOYdRBTw3udRlfGRa+4Q=;
	h=To:Subject:From:Message-Id:Date; b=jNs56GWcyTvYaAs3sTUfhFjgdKvnCZ7JBUf7YTuYyZuuorIVXKv3RxExDuwwQjUJFg2biBAMRb0BbYsFIpfR3B6FrLhxA+7H6L8qeKJFr+htR8Ca8Usd0WFXRo+0Cwa56w+rHi5nkWDSZAEI+39w1p2f6CjPMqugPQ6lfkt/ZK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehxWgKZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehxWgKZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B1EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771709693;
	bh=yJQYCdkYZi3yfxO2JtWQJrqqOYdRBTw3udRlfGRa+4Q=;
	h=To:Subject:From:Date:From;
	b=ehxWgKZFQyrPggvuYKZIEG1JCz3po+VvCXxhjNl0/eSVa2nfw85jEqJnUceLRIyHJ
	 R/NGqX14x8tCnhbGM3rFkGs3Pe2oy7hBAB6wtbDbrBlNGNQXoYHltxcJ/Hg9vYg45A
	 rarF7JM3NuzlReDHvmBPN5UcZkPw06GHjuF/gtCC8PydP1blYQtZffHTMvRJrSooeG
	 gf3SyTg5m9wu7IndNOxBw4Nj/dhZxqNMPPEQP7c/gsejFk1j/UurVwzxhl6fO6hW8/
	 a0g2kj/2GjwWXZFq2REDueUpVtzkLuK31KqL8DDUvly0rQHWdcOPhlSa/rtfGy3Cqk
	 YOfmyS3U6WTwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983CDC61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170969358.8784.5264015924624583977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a55f06c1c838e69b0b6ee2a83dfd6bac4216d607160e8988db1a087fbc9752b
Date: Sat, 21 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771709693
