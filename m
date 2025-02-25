Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37389203709
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740488335; cv=none; b=qLF0aLbLwhCuK+dD34WbK2mn8dqnh9GNAnxxE5u+SlwKvXSyh90ivVSBxreI71oFqmzdkQ4xN1IDUPoG3X3PmojDyseC4UY64/K4p4wSp9Lh0pepnEBgpmS2xcdwaTzCSo1hbyRXdlrVNv7CXtXW/dDrCHbVAYq8lZvYvi8f+To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740488335; c=relaxed/simple;
	bh=wy5wUuiyLUkNzBcyQ/fIzDvJyB3Ojs9b0F+ZOZdnt9w=;
	h=To:Subject:From:Message-Id:Date; b=nQ8d5GRlRpvBiNCCVVcAK9dbmHVSUfbby6H05uVtD3SnxJZO6rYuU93I1oEaJ4cTtXskMp2cUkxnJ13PdrqTZIklJMstw1T6/KEgxs7Ug3YSznwv3QhuoJpzAwtOgTTU7JoNVv371kk3aEezT2/P0R06QLW9GLx1Qjzf762ammI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqNsOaCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqNsOaCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC649C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740488333;
	bh=wy5wUuiyLUkNzBcyQ/fIzDvJyB3Ojs9b0F+ZOZdnt9w=;
	h=To:Subject:From:Date:From;
	b=BqNsOaCFUXyNxdrioXJ2QnlNgFT7vhBceB4j+JDqQCX4dpYmGiSnh8jOwO8J/AbGQ
	 uYZB2aCal8siol8y6ubXoRAgYFnhT7GcJiCTu69IOjKtyL4LwauSels/IqiwKeWJrl
	 Nv+IIwi6zhJ4K4R2wv+4cR+gLBjKWCR5GaOdS8jLM1Gz3hyA/xyycsSLK+AHriFOUr
	 S7yoMBTvzywR+qggmyw0wENfNqDj4WgTyqy4KoTKwjICubFYH/Ayo0RghOcgACAXni
	 6tTj4bNyOPlGqTR+zgm9hZDt7voACeW9ntIQKfvVIgLy3UPVZeBO5SkbgK6YopHROF
	 HfvCm4S2rxQeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1989C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174048833365.21433.9878454356033000947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb92b91a61194f7dce91ae68037908da76628e46fb6c225fc3a9f30b42165d4a
Date: Tue, 25 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740488333
