Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4178886347
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 13:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741009734; cv=none; b=fnuEIsz7cnEi/WcEuLMYXjefTHgIS1isenFIlxnYb34uIjIk4AFshJANbs1sS9EYk5i0+zcL7s6tS+6d+Se+A+OmVtaDequh+r4qS5uLVFJ8fnP3QyDTKwONTflTrF7DwH7yhIdps5ISEMeI/jhCUz3Ji1RA/rgE+WgjyWN4u9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741009734; c=relaxed/simple;
	bh=XFkNXgZIBhBEm+6slbyjUOoydzDyZCNii3qZTjVjuT4=;
	h=To:Subject:From:Message-Id:Date; b=QaJXr/tyu1iQgB5PaCEJRd38lMDOsbLyImeDx9ORLknWgQG8lTVlkPBdBkctRF/kAZG449DjJIGYkOPngtqZ8+3O8PMMb3YXAkZw37ZEcOkEdGszxpjGIQ6iC71A5Xh57W36tglVnKxpaG6E26/8mOn23+cOGn2lBxqLeV9dvNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESBs/xtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESBs/xtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CDEC4CEE6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741009733;
	bh=XFkNXgZIBhBEm+6slbyjUOoydzDyZCNii3qZTjVjuT4=;
	h=To:Subject:From:Date:From;
	b=ESBs/xtNeKm5Ak/eMwsEAt72YjHnivXZI2exPdSxq0VRKwXN5GNBRKgX6DaFN3HrL
	 AaDwg43mi2/6yAtfTDZfLx8d2AjYIG0IrajnLdziFJdqha0kPxrTl5Nz2pgN0t9old
	 jORrFfdydJdCoV7sCZDidSpq/W6LvPxgTqyFCAl30fCwsVAz6g6S6SdXLe1CyEocVx
	 lhSr8Qugd+kCIxFidEkPlmR8Pz4bhSYMseg4K6orJcKD/LqoCiONcK0JB4y6sQPxKX
	 cZ+TBQLPbuah5NLjFL9dEWeAQQNXbE8UfCzIYVvRBPc+GphbJ2zcrJOTVjsOPrZit8
	 lMlUc90XdBgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6EC282D1
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 13:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174100973358.8693.8566771129263235552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b412d4bc49a0910d37d7eecef4d7fce1d85b9d4f1aa8354c0b12cc6d5a3c3479
Date: Mon, 03 Mar 2025 13:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741009733
