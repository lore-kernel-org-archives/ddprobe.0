Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EBF1DE3C1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733172354; cv=none; b=cjSpAJKoA/ujCiVRgaYnAXr6phax7lFEaEbLNBn1ayL/7V0K9bfKwwe2tOb+n77ICmCE69DZblo06bnbYdkU21KmbZeTSkeVUeeIaRecQEKi2c4/xXro+zhUD0WUa/SnuH94i3Sn361z5UYlWsFdKlCw7sl+yeoH6L7J69c/7mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733172354; c=relaxed/simple;
	bh=T7+HYfwc0r6Q/nGiC6wMnDl4rDTeh6UZmx5hoEDXkqE=;
	h=To:Subject:From:Message-Id:Date; b=ZpcSg/HQSQgGVfaXQDr00978Q78hU1p0Q75WfgeIQEZIdddVk6S7Hgu7fU0Kjwl/+m+4OSE5oUzwGayUqVAOx1eVNKlfXbM8s8Ti6pSEdgTfpJHJSG3BSXUwPgrwSLXouYVdA/blTv8w2eAXX43RdMKL9g9RRjAjGOBjI+qeJvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjkoQ6U8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjkoQ6U8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7BEC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733172353;
	bh=T7+HYfwc0r6Q/nGiC6wMnDl4rDTeh6UZmx5hoEDXkqE=;
	h=To:Subject:From:Date:From;
	b=BjkoQ6U8M/8tuYwwAafXyvsgYzoP7Qn9juCiuJuYBYflPLY7StnsbCSxLxCh1SHEr
	 Kg0EmOYf+EfTrdX7xHzI/uNpHj7q5S/ZYuQMx2z+nCtINIGhj9ha5B4VNLHeQ1GVb7
	 BCV8z2OZys3KL0Scdb5oxS1agGrrfRJM3FFiqqewSycJvAewQfIRBF/XO4OPBuSdTL
	 DF2q2wT5GzZUDBBlmSW7b+rm6+Q8gl9YLfK4WQsqTzHKTa1C4yjawedWcOqG86tOiM
	 9aj2Nc8SwjvAU0Nm2kYb8G8+xUEWsw2gLLbK1QcTXDAvx/xw8BX3RCEDASWyHHJSm+
	 3wXOG4mXb+N/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E5E69E93
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173317235360.17067.10540188644181529050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3777dea052a0ec8da65ea86226614b8b1746f360df4b8a868ee13a164e37ac88
Date: Mon, 02 Dec 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733172353
