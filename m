Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299922367AB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753969194; cv=none; b=gi2KEiu6FDsyVI6VENWzg4U8RwX1cxEJbvmVd8x7wzWxUAGZq+fR8VyqDl16vXbIDjpXvdVNJHkaNBryg43hnP3kYSYz1gyYU7Gow2Bk0zlAmSvhdEAZk5xpbJN3HS5T29GhgRr2nRoX330E/O3RGuTAN/TpgHIFk8Ckiv+fDKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753969194; c=relaxed/simple;
	bh=NkVxUOtlsNmWtuY7EIBOZNd9J0BwKPIUEolvxZzuVl0=;
	h=To:Subject:From:Message-Id:Date; b=NLJEkURVb0gtiqa/c6C1LlEB2Wp5P5aeQKh5FMglXU7QEt59CWtA2NdLGend6ezqeIjfLFPORCz8zTuJhAAJDgGrF8sZLVwhjecKPQlFm1Nj7I+Q0F2leiIWwSfBhfYXC4UuDv6ChhfZ+HqZjWloh2hid1Hdkwe3nh+Ly2psM3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRZZP2/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRZZP2/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D613C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753969193;
	bh=NkVxUOtlsNmWtuY7EIBOZNd9J0BwKPIUEolvxZzuVl0=;
	h=To:Subject:From:Date:From;
	b=YRZZP2/D3iZcqB3FIQqHyXhzSI9nyyvlSpb+6bKu3Z8G7whylJl94czGwLGrkaF7u
	 t+2jiTA4h6HaM1tlroPDehvI0Rn5R+cpcMBDzm82DPnQT7UrTXoS2BQqBktuZavNBG
	 hsCl4vWPZnP2RaIU6ApCWCyVDBxfU+GFmhmCW28aoSZoHJjCRDQf0jU1DPKBnJWxyh
	 gT9i7nf2O6O8Q1DM5UdRY+oQUcGCpzSI/Ze5fzEJjshDPmU8lcPSJv+V4wYaDrgn/I
	 /DOnZjx8CsOVEo/Vijj8Py6M5/FI5mWoWu/rUGmjmPLVdlDmBireceEwzx6+TDybK9
	 Krhb7xyQgRXyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA9EC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175396919357.32359.4640763503253295480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0aa0d5f3e5cc7bab8cdd6df5a6e9b659a3b5d6aa5c7a96817f3c3ba12cbc9e
Date: Thu, 31 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753969193
