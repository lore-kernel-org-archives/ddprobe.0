Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E643911B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790335834; cv=none; b=Pi6JQk8C5G6rSUsQgU2r66zcP1ICOlq6PhRFhWtOThLH/bjtVB9lLKHYb/n9W31VPSF8JRVKQyFjjqBM7Chs2Qa85/1djCZQO+lRZ4lvNW8gUbxajAw7u9I+nI1DVJD4XBEEEn6SXHwXnoLXI3URusesrUw4chom50HmceoRePA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790335834; c=relaxed/simple;
	bh=GbSSYj80xfR9QM0dyqL8uggmEG6/Cnk5Fjl58MuCe6Y=;
	h=To:Subject:From:Message-Id:Date; b=YHD8yeO2CFw34nhqxjF1wNBfJy9EpBXTAcqFAgBcrXmjT0RZopz6HWqUWRsvadExkl3tqraEP4vkKp9ALozMYY2FZZbyLMe+pQlWRCRn3QLUPK8r9fRmgRK8Hmvov/DXo1ZXJs6WSQpIehCD+AuqJ7oKsXFFBuAAgkhIIJ3OGWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNF8LArv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNF8LArv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCECC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790335833;
	bh=GbSSYj80xfR9QM0dyqL8uggmEG6/Cnk5Fjl58MuCe6Y=;
	h=To:Subject:From:Date:From;
	b=FNF8LArv73gBrnJUrZMV2FYQiHaIsHjytgnntYXQfhR3yVZahgswFTcgSl7V87TAz
	 StTUcW2UyZAoyRMSlATSeI+/rWM+JI1UqVdI5hZYAUB6/DVRf0Np2Uup0YegOl+TVv
	 8u4oN0TJmxJ8F+YPsfymCL1ALk25y7vkdMVJsiElRxcjG2a+c1UaVTES85t1nsrDTi
	 W3S7wHdPUxjm3eYJiMShSQ2SK+UW23xaGY/CBoAQxeff8Y271hFSQFAjy7AN0y/bqC
	 Kd8nlXV5HQpRB+2nfO60rJCfTeCVrlEoQm7z/UOTzbpUP3TbqMPqZxe3UgLQHnWkVi
	 C8V/5vjBqMOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B197CC98321
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179033583369.1436.183937801324547329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0ab2c43b9020546ef479e65985a56e48901306066fa1a9449f478399508440
Date: Fri, 25 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790335833
