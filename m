Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A59284665
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769697234; cv=none; b=b/3tkjc5V4B8zsj+p6P/aZmwoRKeTPn9uEI3xx1hnRN/TUhLQFdI+9ZR5ViBPNC3R4CZ928U/rYus13ig8SJqTDYs7sJ65X5QK2sMuE9f6mS+ZJPCId/Rm5lMOffFTJXfKjSJVLEt8FWbO/0J+571VTzyYsLI3SXtKexRqGWnss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769697234; c=relaxed/simple;
	bh=9v/UDjXdjYyZGtdMlT1n0fHy0ltodwQSVinMhkYH3X0=;
	h=To:Subject:From:Message-Id:Date; b=ZdgGK7Bfx9dh6PQXCY91VUAR2iP0hkkT5Th/12UWxgkcOdK4Pbgfzmpt7WOwXKwfRJS/34ZzEDwcLtyO4Tf/wjRLmiXg+3rAxo8QTEdbFVaHuTEjh1bgONeWIK823/ZLZlNVPwwql2uCWLnn/k1Du04hWBV14RB6IZLQlC7D3pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deO1XcJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deO1XcJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA28C19422
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769697233;
	bh=9v/UDjXdjYyZGtdMlT1n0fHy0ltodwQSVinMhkYH3X0=;
	h=To:Subject:From:Date:From;
	b=deO1XcJtODwLwu8DwVJykEvaGM1ezNzX89DRzNf0wYlx5gL96ji2lnI/hoc8EkiuW
	 F4+fepEKiq0ngc9fIMtKIKkQRmTD2Kw3dQhvugyFJ//6eZAxhTVktBWXuLkKDCMd7A
	 Y1/WHZhehmo4CpZFnLNuflhfQWzccHuJ13pJPDSb9pk5nCFDH9DuWhK+C8HB5k43Tg
	 uode/N2q0MyQmtwOrhrcSKxqOkm1Gz8b5lDoMH8VeNx2K3oXkE23zFgx3cFo1KdHLs
	 k2ZgDMZgiOYWWOe71W5kPT2A79S+YazSB434Zs1PmJn4Cd2NDJCQ3jmlTIA5K9udxu
	 cDAoCXyMo81rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DECD6101C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969723359.31203.969558091966398470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60464af2b35ebac967c5491e70187b76699abad9647056eaa159a556958051d
Date: Thu, 29 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769697233
