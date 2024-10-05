Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA782595
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728098154; cv=none; b=rbH/1Q/5AS+FNTzHXw3CTg9IBMV3YDrSwn4W/mUYmYamlTeAzsHU6H/wf5YjA5lUvgEx9a6DejkDW+JaUJX8v2Y2/KeORjc0A/ojr3lc87lnFytNFjHegnD2BHOEBhBUutmoGUegccc5A+ifEK58kdSPnICGhqpl9CGbuYio+/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728098154; c=relaxed/simple;
	bh=LHi2fS3xtNPZDSRSLzVuUW+gr+z8Y2H1G3ngimpEhoc=;
	h=To:Subject:From:Message-Id:Date; b=EDsikik+D79K08wc3GHD3MiyiBIegHcMHKavzYmvdxWb6Dx9fu1tO+hVFjn5/nH+TLbIKTNNvyd1okvvbttDdnmU2LXDup8ez5LKkpFPmFSi3i3zr2cWEQQ7GY/k8JbC8YDwe/d595LMLSewslLHPEK9D3IQwkRbA9wph46+YoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYx9FWws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYx9FWws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B269FC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728098153;
	bh=LHi2fS3xtNPZDSRSLzVuUW+gr+z8Y2H1G3ngimpEhoc=;
	h=To:Subject:From:Date:From;
	b=XYx9FWws2fIt/ZWE2vW0uo8kQ7qX2mnALxa7Z5xHx0qcWcWo9vfbmbCODZSojK0fl
	 ZIAtGBONncmnjJuMSuBQXAjGRdCebrpL36P7N4uqsXZEqqG4bWm859/4wFbTFvCJTL
	 2QxTIoP4ZawC0YhhB3chl9omB4OPn5iS9zMMeeqtp0sT9RaQU3/oVOPIA7O4ofk4uX
	 +Ad2ZQB71F34vrlOC809Ge8AthE0kClqaVeEWOTwJFyrcsY8Zl8R476cc8XlHUe1US
	 M5xmG7mj6EYBDe4WoFcPTnPQ0JiKtTjF0RCjJ9QFucJuOoF9xU69btK5WYuQO0k0Jg
	 9sUFHUTjrkekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D138CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809815361.10364.10907897099582985239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7a971e77d7f0b483a99c4f2172e465b6ce0aeea1a7103bd5e81ac55d715a52
Date: Sat, 05 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728098153
