Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AF0346FC8
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788631834; cv=none; b=oKvGw+TgM3owCWDeFZMHCXbypS1uk1vWeHlsOh7lPF40zSliPtgO5srQSJv4qoKzURrQUDYbGyEh+zfNuukDGC6mkhSwgMQeXIguiOJ/LkV7hlWxQbWibTj3puyCB5wgMpJdSwgGYvBvYbaVkGd9VQ4KinPAjmpQRMbPhWvdbRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788631834; c=relaxed/simple;
	bh=//lH+Eum37k1CodWtQcCnA+Dz2qLBJ3jQhUJA8kD82k=;
	h=To:Subject:From:Message-Id:Date; b=C75vhBZo4kzq8AOgAxolaHGLCAl+O7D2QvuuJmmxp1uuZd/J1NlhG7O3KGgz+1vuv+1a3STMj9vVIAkwsH8Q9cbzZkmAyZOIl/CH9farJLLPumyAzFJSo1MsGCYvpLbxv23lP/3fR68sxCkeU1V8jyrpg+7owqcSX9kA0qnpkso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skX5qJm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skX5qJm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A8AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788631833;
	bh=//lH+Eum37k1CodWtQcCnA+Dz2qLBJ3jQhUJA8kD82k=;
	h=To:Subject:From:Date:From;
	b=skX5qJm0n9GW8rCGWzJ09WvvuUpaKPd+qYNJULgX7QBTzL+KkwKzTkNmw90ZOwI/0
	 k1NVM4g+vv1MSnD0uGI945cqFkFD6o70hUd5kSn4NceVK7XXCdHdOups+I21DjTNfs
	 KiEMvagSE6hLxRgbBGAg/ySg0yKtY0AfpFbuYXMz4cwiVTALBAZkWEORMxEPCrOWXc
	 VOmoMA4dsmwVCzTY0tr6cWZARabWm/0LO0tTzL0sbMbtN+99fD6igDDbqeKOvznwrj
	 Uh8FOxRRlNCRvp8g0SLA6gGZHxntggk3B68eS/6JBKJNW0I11HXl5lUYFPOUHonKf+
	 kg3s8XQYxhUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CFCC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178863183369.26757.4427325814853567579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed4d553653d8ee917af093b23d0649d1f7c3944fdb4d7f9dc0dd2e12d5e178e
Date: Sat, 05 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788631833
