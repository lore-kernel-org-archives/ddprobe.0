Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F15D2BE05B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761032994; cv=none; b=M0Dylf0W8/Ul/IGa3niB2Y06m84NWGzG+NfvuuLwK2t/Yq5K9Yz5+L99ZuELOskykeQrhIhSUlL6lQIwY4Q5MtJVhTvVlJbLgTVF2gZgIbMZm8H7tgSD5AUmocGqOoknA9mjj/PuviuO0Tpu2ZSrL0eoEthhu06kKDENBXYJG0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761032994; c=relaxed/simple;
	bh=tCM3NpSup1EcuPeczMWxUmmpnG1agVsgzwHSp4Ly7T4=;
	h=To:Subject:From:Message-Id:Date; b=QtrHRbSYCrGXx/02mQOzZCFsZlyJNMf3TXEV/0yzOw5A06XsEmGcMYyrzy7dZume0p0I0SfICYNMeiQ1qtalIa+pFbtsyeY0f0uQ6Gj7J5bIo45p+PuAV98Qqa4Bc/ljjLV5bdCYaFqh1LpOR7edvs6z5Gx+CEolQun7BlPYq18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFWLLOBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFWLLOBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51BEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761032993;
	bh=tCM3NpSup1EcuPeczMWxUmmpnG1agVsgzwHSp4Ly7T4=;
	h=To:Subject:From:Date:From;
	b=GFWLLOBkoETzwbET1JXRDAAT2DIUk4ddBnqrWLnlo/Hrg8gmmSaMQWfSEg/h3adMo
	 C/fEaVYCCc9B+RPgkOMy3LsQEBeVM+x1u33vgzZWQYKyXLC4lD4CdrdJOuAFwQb5Je
	 CaZ60ZuNvphnXVaB22MdacPBNdTFCOc4mXwaTrcxzlkilV88RwaCUEsqYLmrSfB13L
	 8OyepvsPVkMPBvEX/UrwMFGGPSavNnHkoiI6mczN9zBgYJkJxsTd9HTmWl5eRWuQhX
	 0aiR8z39GXqjPRMbLfssAHu/lilULgXfulS8O1WOcpr8OSmov/OgKS5VGOoE1Xz5M9
	 7A7KKfqIkMyfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFFCCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103299359.1815.336846694965050055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b2910ad6e5c6bcc086d404f41884f46db4f640731e68b9e2611b5803d55f99
Date: Tue, 21 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761032993
