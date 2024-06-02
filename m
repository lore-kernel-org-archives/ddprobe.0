Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5077438394
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717322723; cv=none; b=NduzvBPTA9RD6SFUIy8JKGa6mF3sBu1zs7mT7Q4cgxWuU6gyWu9amvQE8IUWjheTFvpRVRNHjMaUWifau2caHnWgJAjShfD4jCjlNeF8OLLwmL1ouEhzlkdKJce/BUprKFWp4fp4mdTGzSuAWatRqIcFHXTKTCAgtsYdoqyIufE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717322723; c=relaxed/simple;
	bh=h6YDlycg22sH2bRfJQPu9b4lNlKvnNyQULZW3I+R1ew=;
	h=To:Subject:From:Message-Id:Date; b=dJSH2Oe5XGiu9kiNVOg5hZdsok4M5dlt3MKzxyA9WOEqunx241mBmcur6DK6dEai1ApWiNRXkoXS/2mphsEggv93FJoSBsIvl6RF46Ol19RFCLE+7RuUSXgFe6HWp0goGYwFAGiNJyr+OaUh6iSbaqX5RDNX5Bddc4+4zhfJVLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUgobNSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUgobNSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D87C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717322722;
	bh=h6YDlycg22sH2bRfJQPu9b4lNlKvnNyQULZW3I+R1ew=;
	h=To:Subject:From:Date:From;
	b=dUgobNSuxbpg/1nD8oZ1X23+EPvcX0vxOzV5Dvj4iT4TH32PhgQbYLkc1bp8R6Ocv
	 eH5wKVFjCdYSbTESCXYTA0K7ihCDCe3UYOcm0lvOGSd8s7CC4u5sds9phmOvwcZw96
	 Z/JTnm13QHZefogXlpXXWgdd6WOcrEj4Iz76jlAbuZ+XkrPqaDzd6nRgItVwZBzs3S
	 tI/CqVzCOsKEFyCDG3SvCjAqWaoPGnskb9UTNj2V0NnbeHM6DxMfpJ4GOZGgaRVw2e
	 QSe5LRD9zBTTdcpTnG2ifm2wi4pB5VuxibHKeV2Qu/hMNEfKHXeGq+UhguCEArGJtH
	 E7c2LzG1p04xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2179C27C44
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732272276.10261.2740167687234164755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7290fec11ea40c2c3ec3de835f38b7eb6a3179521a45423252d0253e3db05904
Date: Sun, 02 Jun 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717322722
