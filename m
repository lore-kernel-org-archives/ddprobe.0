Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0012FF154
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764945775; cv=none; b=gavEKqmZKY3M9nMFS4S1VEolF1qP+x+DPF11oUkRnoT1+EPOoWCrh4m9AvnH0yd73Dev+3WEn2RwYJTFXEexBsiWp7HhHPKr51OtkaM7lHdAiIZMS7Sq05jlLjVt8Ol5LmK17bJTExSeeu4fR27cJywzUTOz3vp9th3O3nG7Bhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764945775; c=relaxed/simple;
	bh=BVmSuFn+V0Pi5oZg7EVquIjCCuYT3TLXQtkeCYeSYGI=;
	h=To:Subject:From:Message-Id:Date; b=Xd9CFddKachMLhdVn9hw6jzMJzJFGrzbGgCynYWjq0+cG9+kAxTy0V6Az6+C7ojgTVpaYsVm3wZ4N4KgRHnwOR6I5JG19KXAtC8MhuZktAVmd3TvwZOg2k6+eijCn2r6LvCz6mcnK3pjEyvdndaTdm+0xAuC/Q6VC+uYTWQa4aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIc3psH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIc3psH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE34BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764945773;
	bh=BVmSuFn+V0Pi5oZg7EVquIjCCuYT3TLXQtkeCYeSYGI=;
	h=To:Subject:From:Date:From;
	b=KIc3psH6jqJFjUalyhdR13q8cKFR2lwxb0vWMsmGI7AX71NCz0LD2nKbiX4BHiRSh
	 +DMOUuaQjvqq8FXcr6GCm5ALUZ5aEJ3Gu3bZ7v1dm7AL1HyGiugJVneYhbxlx6DLeA
	 9TTf5Ofw9iY8VQa6ZaaHHmOCvPy5NmWsCUewqH4dP7UaX9M4ODReRD0eTNsGuBVLQA
	 SC1/t6ErMXFPah7KSCFmmBXwv30yJJxrXEoltCLSpq9cgBi/MKTtSCVRZ4RyvmkceN
	 FJQZQgfPOAw1UQJAr7MY1vsbJX1BY0s+9Kw0KTOM0lf7n20uACz7DgQ/2V09pi7Vgg
	 qlyrBNDP94lGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9588ED32D8D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176494577360.1619.6299858979740072633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9bbb59d17c28981239afb0aaaa12be2586d2ec75d3f2cd55bdb7a3f8382ae6
Date: Fri, 05 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764945773
