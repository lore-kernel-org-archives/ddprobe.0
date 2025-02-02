Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6402D635
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738455354; cv=none; b=CNm3pkkKVSGMz1CmtpOIWnhT5FY9judNJujNV2xL/pSTVzEkClnEH6POh9b56kwPwbmsyFab9JFmwn+aI9Y2Fpv6UNWaMXxy888UrbpWM8J9esdFr4Ky0ZCwLUlggTXRa8/GFrCYM6Q8W6SyhgSHVYaOYOUwqAxjAjO+4jJXelw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738455354; c=relaxed/simple;
	bh=M9mdDwmvhe5ZS1vYsug70sC1ecaMa0RqXiuNO1Sgt68=;
	h=To:Subject:From:Message-Id:Date; b=SjM4y7L+hGsCwuA+o768zM4v+imDn8f9vf7FBBBfoZkgW1y/sHrjQE0m8blIdTaIvtFDRXYQg1xFRWIBuKhSaHjP5UAQ+yKvQF9MYYpwGRbJ4VohO5TzRrNU8uj1QwSQOONTPvUDG3tg/aH6xmbmKprvzIee2TdQJE3VDFNOjJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkDzbE0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkDzbE0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC45CC4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738455353;
	bh=M9mdDwmvhe5ZS1vYsug70sC1ecaMa0RqXiuNO1Sgt68=;
	h=To:Subject:From:Date:From;
	b=AkDzbE0L6qwHYHwomZGCbdykjVKYTR6hZ9GunR1DTZeZ7Fwmzij71OEa76qJj2uoU
	 /ffCa9vy0LbdxG0JfaehsUNZx1jGzYi7WlOKTqVB4PU4kjfZGh//ti3JZWnQnvfZfs
	 P0ouoZpGZdiCinmm1nyCvOuFSZlhfW0spJUUO33WiwCgNUzPDp6sUG2UEN4v/1ft+7
	 BDAZntDCuGLzcE0upBr8Dci04RFqM6B9jcwnKRJqnno3Li07iWyLTnXnGWNiICABwK
	 4evPm7FCqMp5ikooS+l+/pCWsDguGHxmF+k5V78EJROjmuIqCVXxmjxZW8rTe387Uh
	 41A0YPGjECXig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAAEC0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173845535365.26084.2751921899298008218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e49cc2d10f2b553d235b49ec4cfde3c052ec466801d0ee8d68a48fa81eb765
Date: Sun, 02 Feb 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738455353
