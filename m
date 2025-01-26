Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50781C147
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737886554; cv=none; b=KAbiLzgEHeI8G/qghANxXNTAuvs9G2acrAMFk67scEZ7DlMsbeg2ckuMffB5vxN+OpKHduq5m++o09De++HaE36mRZPuBpEZiAsiCpBy9AAUld1ouqgFL+EX4SBeMJBcXYHDdWUtzuRXqtMFkG5shhG25C9OEQCuZ6imYIVbRSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737886554; c=relaxed/simple;
	bh=TIfNxKYHxsVgH2OiA8MQaHvP8OJTAe/52Sb8pNEyzXE=;
	h=To:Subject:From:Message-Id:Date; b=jMJloBJDtk7oUn4er5oB9//mvl0dSZAvGNlDCPFM6x9rwE/t0S6fQmgQpVXT8Z3DCJW9D9G6zqOLkO+eHVTnw9QaOAveNBVfCkJy0HK0oTdPhkJQIhYuO4jFe7A7vfKnTmQ9S75eoVK3P4tcSakZkoNBO0jfeSt2O9VADnSuOVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7G1Lc7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7G1Lc7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39EEC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737886553;
	bh=TIfNxKYHxsVgH2OiA8MQaHvP8OJTAe/52Sb8pNEyzXE=;
	h=To:Subject:From:Date:From;
	b=K7G1Lc7tKpL1UEtg4YuRaaAAOCjPsxDI8lf4UxQ0bSbLIBbEDqL0YRCsdwkJLZhRx
	 /dpENZ3+LiT3Y2fE2NdumFlZorp+5aROetc3JyUokKyaL0CiX77hWUzh/yvfqBpTj/
	 8xgrTTbPVg//FiOtYmOr9KOQRGtNE12n/C8JW/L8TOJ34MTjP02nWmtSlsS/9tbSki
	 nCFuSfjo8FICf9iSDzqOrFygHW93wN42nhldlE1oPkyzMhLWsaVf8cqeQmOA16s3W8
	 CbCKeKxoDYtyUSm4o8F2xGyE/kiHf22EqzP3T3Jtcoz4TFejAa22MuVznSdsu3aqJp
	 TkYhYuczbBQMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B33C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788655357.32544.11095097708011710036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbd788f23d96174f64f938d28ad0c1b58ae957299f99185d6cb01bd9fe3183a
Date: Sun, 26 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737886553
