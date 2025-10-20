Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1612E191484
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760921994; cv=none; b=ffX534n4opmnnT1n+9f+7/jFiAGUs2UuzZAYTBQqlzwYlJ9dIzb3ZwO9+Fo3Mtsg4se7DzhZFFzp7EnDIvPVLYVQBhgE0CtiP+dbom8BnUbdpFonU/S3f1wRxvnH40bk4w4zn09Sc8BssKVcwHrpGismzJ9CqN3HRCCF7PpJMdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760921994; c=relaxed/simple;
	bh=gcftsjH3jlFFWT3WdjKXkfN9kjgMvc11N9CeXUDUyb8=;
	h=To:Subject:From:Message-Id:Date; b=l5EWWb54CGV97mnbG7ku8teCozIB4reZLS5CDa6LACnkoPntWkX9B3y7Aq+FGzdKULmv4GzGgzxMPz1kMN+n9j0Nv8sFkHa1FmsWnvy37PfHtRj0c6SuHI/NHF+wQ5DuWr+MPCHQni1UIzpscyYjo+keo/fIjkuemEiA2AO7uFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYtqxTfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYtqxTfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA360C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760921993;
	bh=gcftsjH3jlFFWT3WdjKXkfN9kjgMvc11N9CeXUDUyb8=;
	h=To:Subject:From:Date:From;
	b=oYtqxTfdSVctmP4rZ8mPrkwFMHjQr6FP/yzgixCcflot8U2mYEtLeZd8jtoquCeDU
	 /Vig0juaXRhDSYlYdIPyG/3ZEzRsHfi6G0f6ar3x8jLylqksgvAqdNBCp+yO/Mqupe
	 /wIzSRprigQCb4ihJgOo+GRMKWTBPdyg2S2Qum388SawzpzgUrxaBA8UH/IWk9XztN
	 E5nYZzDBa/+s2ISmoug/uCLy1+nXYGVi1e1dqufARkXjq63qj8rDdgU9vdm290MiwT
	 0pMDexDpgYg3q/9O7iAbKnBlbD9FCRtfOQstPpu1o5bnuKOfRvhLNoJWciTgKRbaVi
	 kQYaumscghTAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95523CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092199357.16026.3816270487417624888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adf87b74babd9aa0fda358e102985be03d473c9e891d9b59f3530352985be14
Date: Mon, 20 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760921993
