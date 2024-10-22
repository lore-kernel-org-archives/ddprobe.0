Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3421C27
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729572954; cv=none; b=IiYePExIAu9vINXLKV8pXhR510t+c+dm5iBZZwR3Uf7cqszplx/DCB+VYhKjblE6oGpwl+SaRxMNzoGQ2kXX7OzvCczIsyawY9scEsY7LsEzX6ItV188vVZMBH5ggvR0KNYRZpkld39tFKbvzY8zvBLII63qCXqeok0AfCfp/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729572954; c=relaxed/simple;
	bh=SV7tOYtjW+hDdd8OUpKUBfoBNcjfMcxSETTR+nNgLJs=;
	h=To:Subject:From:Message-Id:Date; b=V0ryLXij50Vgxo2EML6j36cfG0ReU7blh+Yls0MF/vL1pqo0YGALeD6RUpkPTHo2hH9DyaGtJRg4heoDSRM/fRK1UQBPGhunJCtStzXgvctT5zj5iRD4EGJGsCWRvglk7QCGqW1QuMUvmbEK45dYQTGDWVvRbxW9e03owDOUw1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIRZmART; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIRZmART"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD47CC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729572953;
	bh=SV7tOYtjW+hDdd8OUpKUBfoBNcjfMcxSETTR+nNgLJs=;
	h=To:Subject:From:Date:From;
	b=fIRZmARTusGN2uM8J34VTNwwWHoAqFJrpG6lo3S/HZiXvk+6LZFnmW4oEWDDGynOj
	 8oxaFDZor5eh3LyTGvkv2h2CjNHbrXr4hlwXxL01v+zNOl5TuC2BinkuSZUkllfiNV
	 vk0HUJQuhtGOyNiceaQH9eYL6HDTQOi1p0DZc5d5bIDJgbkyeFSdasoOU0fogi8dvw
	 H7skBv1hbYl+7TggqUeNjNraUx06bpPr0aZv41tHxctsRtULsgv3nhnoBeHNhUghVm
	 TJdW5dJAGN3lto1PDKEDLfUf86QHfjYPKF8ed0u4106+y+b68SF5TS2x/U7rdRJyeJ
	 s52kHOhfipa3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80C4D1715D
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172957295364.14226.6763228196547493940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bd58ea980aa4b16ff728e64c63fcedf65e7dfcfe1e18b78e4baac669336e44
Date: Tue, 22 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729572953
