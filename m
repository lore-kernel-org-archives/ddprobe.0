Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C74B537E5
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713335363; cv=none; b=RKdWsmVo7k7MfyA1NjmM5TWb+KN4IsMAnGfxEVyTgbnWDLjcIL1l51/ExYG5HOl7gg3YuHNblPaNEhxsJb9vILXZJMHeLeqPrusS7C5zEbyDybFxA46gePPhQ+HTZubTB5o8kk7hwOq0upV63oci0aO5tfPAlNm54MsEwcFsd3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713335363; c=relaxed/simple;
	bh=VFEERAg47inrUkVwergC+MdYddS03Cn4y+nINGPyBUo=;
	h=To:Subject:From:Message-Id:Date; b=RGbhaIXhv3sbCRDhDZxByZ+Yhbr222JbnzE7gzIMgvNczKVVzXcNn4zeCsOpdcamBD0+81uMsN2GSvhkDDC9QiwK+eOfshRrDRQPN53pZBxTbxG/V6XEQ6JZpKH/XyCCuIYQ1++2HgFRl+GOl6hXSY+TalWVdTS21LmAwmDMUFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osrOx5oX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osrOx5oX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE688C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713335362;
	bh=VFEERAg47inrUkVwergC+MdYddS03Cn4y+nINGPyBUo=;
	h=To:Subject:From:Date:From;
	b=osrOx5oXIEWpQ3Z+SlpfdSoen11GQ2DfU0CvMX+DckMmj6rYkVCReJc1BsoHcf0P1
	 ukXdcP45WEP7rvHnaWhGVFPbFKlKzXJGRL1f2LZPyqagnXFEotICvcMTdzR0vCM2zf
	 2Je4keCPYNKRYuTmIxsNGSxYxiiKKFXCczV8feBDG1ejbL9cG+vjXemHI4Dd5IYZbZ
	 YL8lz1O9YQf3FXLUUUN9UqHTOOG8SQ2W0kKKh9+lBiPUzJLCa06FFy6ELEb8LD8i4y
	 +ioAs9vfrxjBWF+9t2USkD7ezWs5qkGPWwwRkKDI3KakRG3F9bsU97buwXmWcIq1nD
	 UrFTZjfESQ/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D38C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 06:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171333536278.16018.12674340462965561967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cede87d53130597b5f9766028bc78d4d73ff93929496f3a40ac313f3aded5643
Date: Wed, 17 Apr 2024 06:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713335362
