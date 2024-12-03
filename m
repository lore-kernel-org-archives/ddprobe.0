Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD123F8F7
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733217354; cv=none; b=ojnCtn/2h9bV++M2dCRfJQm7lI4Eqk2y/hzr7EZSbxORgaWK1y611Kn1vX+Bofa71Kj0HwBnk0w497XvmAwxlYXL/9ucz4wrkg3RtN1vSMnkGFZI5vc3yYpi9e/zino5vkKa6PmMRgSCsy0wMchTWKA5QnB+g5AVu+/vKw2vWfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733217354; c=relaxed/simple;
	bh=5cayVl8HkQVNXRFk0cfpIB6YLsQ9tCy7VL9atuItxug=;
	h=To:Subject:From:Message-Id:Date; b=d70Nr3B/W56OkkISvI7L8z5EgT3sJUuqG2XLGAbdAh3KTvcGQF9HC17uxTveScXD+Zra7bfvJJSHSUAlXqLUSv5OpOaMiVTlwhQw1OmpXpseuV63ifrijfeLRjsTtgiVwWsLlMLtgL4k9wpCNltmsMyGT73ISPwsqa6WvjALayU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzEJ4AH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzEJ4AH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAE1C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733217353;
	bh=5cayVl8HkQVNXRFk0cfpIB6YLsQ9tCy7VL9atuItxug=;
	h=To:Subject:From:Date:From;
	b=XzEJ4AH17RRVMQHHxM4Gl65566fma51s5K4Pd6vMDbG+jzrp+/XK+tJovznQg0ajw
	 LzBHror6SoPjdtB17T2s9gXzH2jZlAaKDVnmB5sIDLoCVz2XOqpsRy5dT6KbTkT9BB
	 +CpaAImE4G5X4N4Mcxg47okI+FtRhJtbEka5Lt+eAhRsx5t8UDFFEhw3A9NUKlb8z1
	 y8Rb0mLkXR83r/ThrgBHkwTKHkmP34bdWneLzk4C6x4AuGR2nGvNl7nHiyy4/4nw0S
	 s/rmuI+8JN0vwM5G2XoKCembNJFTzpwj8R2w5kSVkxidj5EfxrChaEIZ5rqii3Q7tr
	 NRy5ddw5ySClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D7E6C61A
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321735359.21651.13808834846963414017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3602a0d7199c49996ba572ce7c4284554ace102f0e4b5b9acdc05272208b358b
Date: Tue, 03 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733217353
