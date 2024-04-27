Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576848F77
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714237943; cv=none; b=YXo/sQN+ntIIe/kQbs+g7B7/iuJA8LziVmAKsBdUt1or+Xy//Pg15x39leQjOwHV8Wm3I2uJzI0yEm7Q6C/MBzR24kbgPbPv0T/9x/64v84+vl5uKf30BBvwFVtaGNV6FN2rwWYy2eSXjIu8iDtVf6w8bPOQ4L/5CR8238DEBRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714237943; c=relaxed/simple;
	bh=4IG3f1o2gSRVhi+QkR3jp9kQH1Qd3i/CXJlR0XiwlTk=;
	h=To:Subject:From:Message-Id:Date; b=cPHFjKE6nSt+BJTqyXpQiFjMwgYE66VQuVxqvpZ94G1LxlNI2ghJMofFSQlU/YAkLohjFYwRq/9C2j/80syWchYj5CaoFfDRHJMTnNwEIZPV9XnKhTzne54BJqlalXJst0LJ27S0qC71abEEQD7YJIgxPBR7wolNMEokUVPo1ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/psZgiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/psZgiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9716C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714237942;
	bh=4IG3f1o2gSRVhi+QkR3jp9kQH1Qd3i/CXJlR0XiwlTk=;
	h=To:Subject:From:Date:From;
	b=N/psZgivCjDDDuA5zP04NxWcHCmLPt5xJP3k6sNVjaZrLhKV6W6tuxBoqiUG7zfvs
	 adCH31sgcHv3C5Q5QQvvlgX9WPFxUGEb9qK85fYy0DgPQTKS1439Qxy+JJhprv2Guc
	 8E9hnyc+b1E2Rhd7bSPKiNtAxOisavKtAR3eFytPTcG+TsEapjtMldZ1jwVx1C68Ho
	 QiknV8EEM9DcwMmS/WUmLwYbOzO2tkEvEM66cv/pat3zsmFmq8toszTOHUedXpBVQL
	 foV/MWtVURlnnmvE+7WjA+6QhKLTHHZ/pLU1RKFnLfzXz2n9uv+p4IEYICix4IW+l7
	 jj+LuiUlZe1CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CBBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423794276.4729.16119900304732755277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d67d1d919da5b50311a1e37ad258341372dd807eed154b55b94a9499bb4c80f
Date: Sat, 27 Apr 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714237942
