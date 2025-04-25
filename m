Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2388D2288D5
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745579994; cv=none; b=mAD4cDmRYf/WNd4IfQTKLtldwnlWCJBgKM/RH74A1jMOe8CWRISCE6RKJSVVwkayuKVHoWK8IM+m4ctLpKKLsWg/jKlhcz1l1mEnkhd1gQ8JzgVeBO9BgWp8tWXTCuJHgybutuUEldWWpncBMhmDYJoY3rkiGzrBc43ZVoZJeQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745579994; c=relaxed/simple;
	bh=/eI8TOHr+Jsan+NW1C1rqylwuEdlfVzMRV4/vb8lArM=;
	h=To:Subject:From:Message-Id:Date; b=koPqNCWLa0SYlSjsr/Ki27pJjd5uMefPcXo9KNKD7YkmJ3x9JoviCtV3PqeRIEu2ooOy9sebtGhU/DeLRWj5miM7Z3VF5AOo6L6Z0YvA8TSZcPXPlZRSMd7cTrKgvZn/maI2G3dKX9YUg5GgZpG4exQquGBZId1v5U2BNOAaDq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrCxYUVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrCxYUVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2BAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745579993;
	bh=/eI8TOHr+Jsan+NW1C1rqylwuEdlfVzMRV4/vb8lArM=;
	h=To:Subject:From:Date:From;
	b=CrCxYUVGm25tX2CVhggABz7xMUfy3gpF+iLMCC7xi7P/50Wk0tA+NERhB4BWt5VOv
	 o/iF19aE9M+mCi97GLk/avs6T1pgHc5u+RwGahuBANMZzTkCSKCDHUFkFVlElQGB26
	 o4YP+A4cvCaZI4F0t2504qjR42K3srlxz3U4Xjumya4dTHVU6aEv/BUCXiUMYNcDss
	 8LGCU/Fr2VRPyT5NWZ1kqs6IhvxnWqiBgfde6f1/tc11dxMlsrxCvxTaQPb/Wqqrpc
	 5JFl+gewC48A13KQjMtFW6Uu3vwVWPXqz+cOln3TFU5I4RzMM7tf2Wug7TZng8Cjbl
	 GKdTW8hr0Iwow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF26C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557999357.14924.1703414540562699172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd39d4767b83e23360f4e69b688f474b637e4136f153fdc7f24eeb2f9c035c3
Date: Fri, 25 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745579993
