Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E287347BDC
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777062454; cv=none; b=rxIKPuEllOhXa7lsWIrnehkLDtRXNKWDcHMnLJAHWrZ/eCywFOMSsAJlqiSxdmKoA/lp5hjEFDCcXT8uytSaOzfn5PMm51HN8KNvPYZBuCZe9FXytEBQg81sbdK03kgcaF/1gd19qTzv14C8Zs/lZPF4UuXFNhCBighLA93+wF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777062454; c=relaxed/simple;
	bh=QnNaJOtRSrsDVnBkRPJ7B4sEG+XYzOunXuxELR+0YJM=;
	h=To:Subject:From:Message-Id:Date; b=P8TMCb/MJ2rQrzlpL6Y/fa+2AJC20YbYpevWTcD4mRkLxqfYZAOK5w5fmVUe3QHxNNoO6goannzDZVa7Mj6UYFyOQfo3D4tWRfgTJmkfPhSJU4oQRa7TKf3QDRkQEYxFbtSrqUtz9PVQVfijIWDkiIgXhoFiBcrLpXf3+cZSCkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPdgljYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPdgljYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD99C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777062453;
	bh=QnNaJOtRSrsDVnBkRPJ7B4sEG+XYzOunXuxELR+0YJM=;
	h=To:Subject:From:Date:From;
	b=jPdgljYrmzjuTUZ4UGRi+Avx2y8rtumHosqLQ5pvC7Q7nTexKwTmzZZHD/XboXfRG
	 9D7VLjnall+xQutFS/XN+Stre7zHrgaHXYhDZdxeb4YuzuUALj3qVlO7xihCLUNCNh
	 r8x0FvYh+1pWX2/xjK6mDuU6Zyh62Y4pTjd+Bpw3XmM4O7myR1u8TOIcXjglBih8aa
	 0GkjkR3C7A3DSeKrKyaaR6Pgl62+2mhjuH8Q6X1rPH92rcEAgeye/gwEuAtqd7hzyi
	 t32Ig660n2oqRHdsC88chK9xEIiPUE+hQSazovaR8uRU2ebHd/wYneNE08HOSspRQc
	 1MK6OXR4Qzd3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27DFED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706245368.5514.15289610375978208957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eef4981367efbc2fac49433bfc0d9b6d8296ce8ef3b5bbf73409a4168ad431a
Date: Fri, 24 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777062453
