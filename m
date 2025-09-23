Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1570D31D72D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758623395; cv=none; b=NaoxRs1LXoSmGOyP3m3F9Vyj84J60qZMFycpAIKt2Da7jqVRbjPkDnsPzGPBexIsw66kf2rTB2R4MqVgWHRK/4qAUX0kzn926n2wMWe5CKGTgt+0ofUPLTYrJ3ChyXrz4nqjln85LLuM/5iF/6tBQbV7SjDpVjdCKTAIZi9FY8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758623395; c=relaxed/simple;
	bh=FXXfQAwqauN27OKPyvfkRRbxoEalqUgcJnQ+CKGeUnw=;
	h=To:Subject:From:Message-Id:Date; b=h1pF+1GI4wcMz/qlnLf52bB3PgZuAQRz0PWFxhswCJ8JUTd08XAvo/raZJPQfhYG1eOBjAj2+3j+Ky6V6KrUqoA6nru8q/Bf6a5jsyMoKxh9f9Ae6cp+sibg9MDpJ8Ijw4XhV6/xpIqYyK1TR3ZEh/pDSj+xmIxzldosSH7YSEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1H0hsyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1H0hsyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEDAC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758623393;
	bh=FXXfQAwqauN27OKPyvfkRRbxoEalqUgcJnQ+CKGeUnw=;
	h=To:Subject:From:Date:From;
	b=o1H0hsyB4/6OPvp3da1wQmVbcH47Y6ppzv+JKYdmiHQf9oqcYu6ftPawl9fI1Beyo
	 VB/CoO3HAiqhGt++KSOr2Fo/aKGAp1m91T94QvUChYgq5wvPbDWDdgpSDXGxAJBtuf
	 9yXed/w61eniuCELgihSkb0LxG6ABwtZrCraxvWX0G9JEa6h9Oo8o/4s7/ysitjHgI
	 8Fl4XOCeXXv/Yl8Ac+mzTfEs89lJv8xrUCFGBKhIJrh7i+XWC83ZE9r2tCzsJJMrAS
	 Bp8c+WwWVI3YF9Dd25DjnqA86j1Yd25fm1jfQ/jIoQFQOeQ1zwu6sQByiEaxGl6M02
	 0c7ujyu04s7zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6E3CAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862339358.7032.14347189809334140716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6523e7e7acf4e00e5b915cdfceff19d0d002966026126e41c1f1aabc22967ab5
Date: Tue, 23 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758623393
