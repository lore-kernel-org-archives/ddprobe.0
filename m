Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CFDC148
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759295394; cv=none; b=h3xT1RA2VprQ+1Y9niYWoGrPQgQ/mOgHd+jC51+DcKJYmBIDjODqRLnGsi+zvzIGzyjK2b4gZMsm/lv3eUNI/rGEMXOpJ5Y4JDFf6Q+bx/Npm0iD/DA9U0Yp+Y86RBjpfxr9O8BzBxZjRqLa6CIQ0vOZ3tEdoU4/bQrL4vUGung=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759295394; c=relaxed/simple;
	bh=IQvMo0jMCh8dndfV9KGpGeF33fGdQo5kZey8f8FMnN8=;
	h=To:Subject:From:Message-Id:Date; b=qvdCPSn2Ts3TWKskdcu6HgJry+WaQTOYe6m4iXeCHqAiSYwMvLGNxl2Lcsr1aVFlZ0QqgmIChGsaqv5QCYstqnb6KjCGYjLHHO3lT+tbKiPKkI0VefE68I4ifDvknRvgnqKjj2ZVePKhjwhj0ihWnHxuglJJ2VWSi1/A6GzztWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYg7K8Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYg7K8Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91DBC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759295393;
	bh=IQvMo0jMCh8dndfV9KGpGeF33fGdQo5kZey8f8FMnN8=;
	h=To:Subject:From:Date:From;
	b=CYg7K8EjdPKbVNigMj1pOvnRqSXRaFx3fzDqFSpk46UgjkxZquNtFloJ0M22UILUJ
	 loRM4dSpT+DiJpLt75C0EDk6dkCo6KFu4NoirWk0Jj2gjDLCYlM7Q/6zBXuAdO5AqO
	 J4lwoMZuUo7bzY50PVcM/sqHpqrC9brQZ4mnAHFz2dos9R8AfeUw8ycH7PVet5swxv
	 +AlzbDDhDrtPUXUxvTjVmmTrGQqPXLVV5NN/fhaGnSg7sqvluVzUcqe9aURCPVJGAB
	 NErGvRVoRYQlHDDoamcBYlv3FCPiqcqI2krKT33MoMG6BG58bN6XdPKFABwan1LKmn
	 zwH//SXkWsnqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96640CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175929539359.9503.11163378771509031479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b5a98a5cabbb09a40193968b313af83be8d8969cd75bf98ec9cde2ac34b346
Date: Wed, 01 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759295393
