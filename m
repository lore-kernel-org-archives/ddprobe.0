Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EA336826B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767799434; cv=none; b=KZcQ8ASsCosDDKSjJ8tGJhCMiZHSLAqIhP9jp8HgIy7UemaVHBsVunng9vRDBVef+vC5eQiU3IZPtMDcJg9TnitdSaYtjCqxj8J508YUbxk4Ql09AfkVWj4vUXQb0NaPyFbFmP46rkRuLwQqkfIbR3TkoJkV07QIqdoXvS/Y88c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767799434; c=relaxed/simple;
	bh=vfXEaMl9yjDgtJRAsTmyMH9rejB9fGpbpWze1f+F8Uo=;
	h=To:Subject:From:Message-Id:Date; b=cf7E5zHi76yvdTrChkqej2sTisbuqrA9Jwat3margC7XuGRIj5yy139iM8U1VzbyCeaRxhLrNMRZczkalXJpjwztkHCqAj5CqNglzVKg2Tlvy96hVM5kKtGg7M6sGqlWmGkAvLCUDS4NphplNzgDYXzz/g9nc0IUE/1m0YTBSBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rL2QWHcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rL2QWHcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767799433;
	bh=vfXEaMl9yjDgtJRAsTmyMH9rejB9fGpbpWze1f+F8Uo=;
	h=To:Subject:From:Date:From;
	b=rL2QWHczdoNrm+5Yid9br3rCNJG7SgEY5Rq02nQaRPkXdAdTjovTTnq9O+9+A+JPH
	 C5xB4nIQfMWBmgp1i7ShqZndyEpcWvtapsQa0s8tt0RGL4wgN5fx/qo10J9/PcahDv
	 I05+9Y7EykyhneD5Jqa4pem0dIQMBOXQ01lrx0BHP+uO86VS7TkV4RRFlDzMPIHgjF
	 vn+HVgZter71F8bp+DpbkMG72fZsITC/qj4TNwVch8dVg2hXnq6fhEbVT7/QFP9+TF
	 R1VpZTGZMgXVBP0ONo8Un++tmC7xmUKTJyDYs2ztLyFRCdfy1sFqNy85AQNQzYJhEV
	 X557oU+Cb1MiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA27CFD652
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779943357.32489.17314116539168497797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4efc39d0bb9555b568cfb0c1960b06f9605c4b119573963ddb076ea0ce65b0
Date: Wed, 07 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767799433
