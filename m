Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358332040A8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746743394; cv=none; b=S+WvjatZRWG90Ho5GzggbmPxaGSLayZ2mEsBvYFj+jhjgUFRLnQanNc+08Kn6d3DMmdnJKMbu09YOZWVW1c4ULb3gGQdR3aJatBZHTTjiy/BWlTdWT7PZ8L6MhFR0XWEYiPs2rDDq6WKa8N9dlHIMcEJI1EoXg8ys2BHidS95T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746743394; c=relaxed/simple;
	bh=jRVTpA/QQIhxAoLOsha7Df9ZzPhjSUTbwLKhQfBXGik=;
	h=To:Subject:From:Message-Id:Date; b=gHBIZilPaRIj11/tHNpgieO7c5IGKsE2m0Y/YnCYaGGqcKSRVCy3+gx1PL+bT6tO/8MKQ7aDQ/MjsusLyNGTIrbEN76Ke4zW5bdeFcuqqhSi4O8K+O4Ev2FJrDW6BZGPCiscmiVuFfkSvo60Xu5NquHDJc3cvi4N6gWz4e21yMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0VGXnHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0VGXnHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746743393;
	bh=jRVTpA/QQIhxAoLOsha7Df9ZzPhjSUTbwLKhQfBXGik=;
	h=To:Subject:From:Date:From;
	b=M0VGXnHCklCA6fK2mrv+0skDYRFQTP1x7gxz1c9i14maCqz0iw30xXCcb+ug56Ypf
	 OIpvgIUkYrx8WATPq4mMci6DWX+5oPWNinJrPHTjeFigaPWZhUVy1grUMZMCXi338t
	 btxzNTihgZ5OcHJrNEsInbmzyLP0K7/qez8H0ymay8nMusV7FvuP1PKoHiRCQo0uzu
	 4O5l1xNukTEyrePLWa6GR5Z6ocUjGwlk4S6XZDUwlh65gJLNHeojw2f1JUqgNinmVb
	 O0C43wfE9Xob/z8PE1VymxUKCiB2NADe63QP9ti3LdcfJMXr9kA3mcacf8d7XRHY7N
	 AAEr3LpxSdpVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA33C3ABC5
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174674339358.3556.13890247284775279036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86c6ac86cc43e215b02cda4b41c625a890d462b071b3ca2a1e68258bd5bf3913
Date: Thu, 08 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746743393
