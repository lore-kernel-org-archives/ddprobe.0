Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AC6253B60
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742935794; cv=none; b=n1UbxakO2XzDGgylEmiN/jpq/+O7TMpgclG6ODXCAQ8AdyGTfpWvkZTYCopRFoloVIvmRprvTIrOXNI2zA5L5QGZPhMH3Ob10U6jPFYdt2k4Sj88kqZWl7mX5OnYBkSZy/Oeif3lWjmtwsKscx19fNOd2+bPVnETq4WgUfKZqCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742935794; c=relaxed/simple;
	bh=luNnTtLZWsKG3TVTZ+cmkcEcwXrh5ujrK55urWAHq10=;
	h=To:Subject:From:Message-Id:Date; b=OpJ3pgPo/QYwJQ8CG1RbZkKU8IQREQRuiJ6exbyE59gTM+5EUlnUakJTj16EJX6KLt7CeA8dK+VSIgsi/4PU5h70r6T8JXTd00okd7HX0GmahkLTG3OiR+9MYH0SFFKPORyaebFvLrfe5v9aOOeyPrqU4Unx+9e+F+C0Prs3Po8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwX6afOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwX6afOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20EBC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742935793;
	bh=luNnTtLZWsKG3TVTZ+cmkcEcwXrh5ujrK55urWAHq10=;
	h=To:Subject:From:Date:From;
	b=UwX6afORaP+ig2b3Jhq65lh40bOQnOfIuJAP5iBw6N+BIsikaBdmr3tjkxClVkhKj
	 18VSk/FLQNzsrk9uof99YL/ZKtuSAAAcQLeTkTBkId3i08Euc6185DJkDvaKNBnqJ6
	 S419X70l8Nm2X7Ep8ToewKmeeWSxXZDhAdvMMzkPBMpdX7Y1xkoKHyCaXK9HVPCAoy
	 lp98bT1SerOiqg+hrR6IWkn4mKWR2HtNskNDAuKzoVAE6ZMsC1C0v92blBsmmv6kLz
	 0zqbZ0dKKQlnddzNur8LJ17TGnefd+OPDbJDOZxeNHM97cfpQvEVAqsDiLAjPub6sD
	 rB4QepnptlyIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE20C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293579368.13127.9245454615805611168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eccaff529282cead6c666f366c64a6aa45544c694ca5dae43474b48e1971f9a
Date: Tue, 25 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742935793
