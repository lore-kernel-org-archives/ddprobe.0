Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E5E2F619D
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757069394; cv=none; b=prZK0aMn5jo+tVzuMSmkPk4lVnCa/IaCRMZ1HkS/fx1u44Al8m5kAhee1yvBM3zp5IOKyNNZbFb9UEtUMNfxhFBfkV+crmWauDKoFbRMNzBZIE9jpGva7fBmBjbwZD41APcxhqdqmZY9BvUVHpZlkZsuS1hZKIBJ/qcQo5ZvOqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757069394; c=relaxed/simple;
	bh=OYgBBpUrYt7hrW59QdbwuUp/DKeCq578QUHjdjpK2HY=;
	h=To:Subject:From:Message-Id:Date; b=sIhsv4PXFBtbj1xErJxfDBPhUcb1G7rAafDWP7WL7U3Eg2Yorg1JyFZEuH40313lwW81Zo42CLyMnzOKf1nx1btXmhtMW2DROcYZ49eFnj77oj+yHYiE2KK/WgZjK3dvhg511OYBBIBq22fsdm+GbHMDoibMd6PonFCy7r9wURw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCzS2IO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCzS2IO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0967C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757069393;
	bh=OYgBBpUrYt7hrW59QdbwuUp/DKeCq578QUHjdjpK2HY=;
	h=To:Subject:From:Date:From;
	b=QCzS2IO9Z9RsUaYTwzCFMfGWW6LR4X50Yn80zI4meVv7AVIwW6BOT+jPFUxrc88G8
	 cJRdH38l5JjEfUiADGAtSSli5h2Is65otM7TA0V/WrM3bXUDVJJKCpWD1tKBSSoo5S
	 f4nISiNsFUos4Hd/IZ6wERsgZEV+j/FJfd5P2rZOI1hT3q7N4Ll2qfPkIwcyVbsXNZ
	 hcvYt9YWSHoWQAY2KZd9AtKr5s6HKSOHxmwwIiPrjep+p8LNt84lwfSSRzOa1pISgD
	 u/+BCT9JIsaEbDc+vI/+Ntc+Sc97TH72X6fT4/7oidks9LKuFQmhbPeDMkFJwmQCZU
	 /UsOiH2sIdQmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4CACA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175706939358.22110.17297303284671704590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d5417081d640549429401db00b96402aaf8ca9ad6720aa5be6f334407a80a7c
Date: Fri, 05 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757069393
