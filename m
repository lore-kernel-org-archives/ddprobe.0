Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2714E19A2A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728596754; cv=none; b=r3ww86pdO9xyyYwevZDNKkr5V779VXVERAUtGeA7V4m3sD+PzSicFWrOQRRRYxwE1qLKXKNPlsM5Tp9iUm8PfF2ZGblNZ6nKns6K0GYT+8xJoshNV+gqIiAltQwlg5vb/vFxROqcNGfA2nO+c5NoD9h75QQEQRZww67+SmPo6Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728596754; c=relaxed/simple;
	bh=DUp8MvP0nrRWiZzD6dM9GYvXylcqSGg3QMTfYLDWcbI=;
	h=To:Subject:From:Message-Id:Date; b=Js4sHKd3Q7WKts+5Uj1w1jx9/3hYL6N73K/n6lt1mS+GOOwCe16L45hP4Y3rHN6JCD01J2bReCrXw1c3dxJnwvaT2bQ4Ou249NB3AO5JbKWWMw1YqWUFCNjUdl1jRS9KU0j5RYeeVvj9K+t0ScpHotaPyBtDVexnMjTux+tgxbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+OiOyJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+OiOyJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3618C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728596753;
	bh=DUp8MvP0nrRWiZzD6dM9GYvXylcqSGg3QMTfYLDWcbI=;
	h=To:Subject:From:Date:From;
	b=l+OiOyJPpZC6iws8MPWtG6OjkOAZyHCfspO3b8l4VnOjb66Rx/rLw54mgxxkjqCk5
	 KEfxO3kIpHsu8IvpZ35rqB6gjcOCIhB7ZeKYA/E1X0qjQpFByFwTZ9fwU+L50ANVBi
	 xeYToZzIFqUiCSNAgNDg80cHEezIUtp8kbJfpeNnoESDbJlt569jCruSXDbv8+NfUS
	 ZD8TVvFTgLcSeP+BfaZFjOxcfE/A04brg8zzpemXm7Ykat21gYOlvUV4Cr/CPKVYF7
	 nGqug/fwi5kfuzFs8pIxCEcRwlQb8KFkq4farCmdhQJwy/wu6xIMZAyqtT+onNv0h2
	 iLO3sdzpXXWmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE8ED24454
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859675363.15118.13584925423275945827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0a3ccf7e7ed678e59dc23c0f399c214b954332377188d7a5462a5b2972a21b
Date: Thu, 10 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728596753
