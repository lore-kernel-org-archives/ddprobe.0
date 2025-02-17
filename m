Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1521148FE6
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739806734; cv=none; b=eSm4PbN7RUHHTZwwvb99IBV4GWWRPvAX4oIF5OIXgmUOlswIGp2jJCkuN8MXchX9xwn1vc60shWP07TM64E9tcBUA8+RRlW84CIfJIFgsFOtRT8QmoTpU2LSiXlTXIwb65axZRyq3BQP3f7O37d+/ppvWLMo6OY3BVeuOS6hfyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739806734; c=relaxed/simple;
	bh=J1djP+Ea1SKvI3WQWf2V+9haaULf7KUaX717IBAYXig=;
	h=To:Subject:From:Message-Id:Date; b=e/Hhq7tKHr6OrQbGCz2H0FIns9TsVcoX5BGAyo7v//pHA6sbySNsfKKGk05b3RW0i3G3f2EpMYpKHVaVWsefwJO/6nEpQoOZ8hqipvuBA+haNDS9gO3EEDVw2a0KxqUrua9+9dnYk2ObNTSlH+fm4seumgjJcjEFycuf4dU/iGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+VH2ZRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+VH2ZRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D9FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739806733;
	bh=J1djP+Ea1SKvI3WQWf2V+9haaULf7KUaX717IBAYXig=;
	h=To:Subject:From:Date:From;
	b=m+VH2ZRcPFBvXXjZmd1NpfZEDHc02Yvk1eq8Y4K7lom7xLKvLktpvKUeWN53dGXUw
	 9e5/hKz9e60edH6eRHhEUFkHLjy2c83UkXyzeoAovYaXzFRG07FVUWziifT59Xq9n+
	 p6o8XUy9CI/qbUnOtXMD9keZ00OtKrI4diJRNuCrp/cCZBzJJ7t8WuANYNNs0GCy4z
	 S8z1UMA2UlGYWHrJsJucrfXwPY2adi1X67tsOYqZ3gXhV9bXwAyeA9cHWZ1n03vZG7
	 6o1Vfqgfa2mTq/5gA9fT8RmjBqpV7oNaSl1WKVlAJUha4aRVwxSaESeVptlDpBYzpw
	 usgYba2fMlbRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A458FC021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173980673363.21634.11262416188169586705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d65c9984c7959091989463a6a4ce282dcf9177470ea1c89dcea5615984c2ab
Date: Mon, 17 Feb 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739806733
