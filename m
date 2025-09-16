Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B8F2E54A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758006594; cv=none; b=j2ZLAEYT1HyFS1R3biF7NaYfur3/7O0LfeCAjVzl/c5DU9C9I5PhrCLzDD3u3WoQZ4aQHnF8XcSLE6ebyEM03wNHbd1P/l29zJZjEFm7AUqG9F9q74GZHf2LvDlCiP78Z7zsykpiwOXbqL3I/zAm8PV8ykvszGNcvpkO0NJXAYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758006594; c=relaxed/simple;
	bh=mIdlh0JjBZC4DUqiSEO/3Fn3pNK42gCH/OyKAV4TSYE=;
	h=To:Subject:From:Message-Id:Date; b=axfRg0iGBHAaWxivYlLZaA4pdljUuCvFPynJfJ3lMDoFLGio4u86JAGCQ0xHgvTUoop0vHLkIT9V0Jobcj2tkwDRXS+/BiEqwXz6ELa6tya9ZE4TP3pXaCNVue7e6tpztEmqj4SJ9sS2vRGBJTYNhvvsy/Ivw2a6RaoL/ByxEx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3D4v7DZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3D4v7DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF58C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758006593;
	bh=mIdlh0JjBZC4DUqiSEO/3Fn3pNK42gCH/OyKAV4TSYE=;
	h=To:Subject:From:Date:From;
	b=D3D4v7DZib/omkSy5A0CBZgC84XCp+cwRoW26sNd1q0Ku5/wZVpP/mFHPESBYNDwI
	 Q1alRm5K7KpCAkEIvFOcE+lTtdX4z0LwKaePevSr+y7M3s0bH5a58WsTstcEqzQjAK
	 blSJiV+E82+3+haE+57aWUQs69xIpzXuy2KkKSbyWIvi1yWwHWoP1SD6djB2itc6uU
	 ZN/e5T8RSZKobQpynOuCRBoWpKJGQt8xYcS48PAx83A7BiZXyNYUvedGUBBBHzLCmj
	 QTrK1t8ufm67oLX+RPWonC5Hqp/IP6aCHfGU4JBcP7YaS2VA3YpZ6BU4cEuE+QDtQo
	 4QaM3q/m0SiKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA07CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800659357.12916.11523453254816895397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba740d9bd9cd22ce262e5a262d089b62eff86ea971ff13f19dd22cf1b2b1270
Date: Tue, 16 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758006593
