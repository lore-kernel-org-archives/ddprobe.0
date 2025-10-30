Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1754021D3E8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761796794; cv=none; b=VzvlM4XHVrin7qL4ktrMOS2raeSDnVDBYakjuxpNkOY0GdfTK0X2KdTzBCRVV1vU82RQJ3mnjReZTohkHz9d7EOVPThkpGcjMqdCLwkQ7Y1COgmb4CdNpKUzk9BS/EsU5zQssjjMCztou4qSpnf/49GoPuPzoccHh4lp5BxTv2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761796794; c=relaxed/simple;
	bh=EeTmx/B1i/QBik7djIkCmOUkUlwF0YQrTatZjGyK9l0=;
	h=To:Subject:From:Message-Id:Date; b=TbEK3IKDx538px0tN0Dn/82O+uHtr68jzx1akcCiVEEK51AK1Ufxqy/kQeuNPHr8PCfskP551iBY6a8jxi0WW8kScxli/jecrTMqwmkrf7/qeUjJL8frLaRsgA5ovIxYh3NRM6QQzIrVqjnIEDNzjCC/zEke+jgQQG09igx9fOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkYo4M8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkYo4M8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6FEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761796793;
	bh=EeTmx/B1i/QBik7djIkCmOUkUlwF0YQrTatZjGyK9l0=;
	h=To:Subject:From:Date:From;
	b=OkYo4M8e3Wq51Vg2tMwP91LooXYAJ/Bn9k0t190op7ZK8x4lOcAm2KhFQ40CA1ycf
	 Ou8NlHMxAv01g23O6SXRrjhGc7gnRPwnIsu1a4RYd9C2j3hoASiAuzfe5QDIIfSmAM
	 +Cqntjoy2nIwqgUgnyn4ANaQRiX3K/Rj1J6mrf7RbzDL5HY3qUKr3DHIBvWyJWoxKQ
	 4kdXQ6NWoPaEWQVb2TKPDnMacSAWPVds1rnhDgDQHJpZkP+bu7+JEz+fmv7T1xSSo8
	 1suvVMOr5IqktT8WNttIaGsyi2VNOTmEeCXuyat3NmjqGv3GbgwoIqb6pWXIzalK/g
	 mCWj212CxCOGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B68CCF9E5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179679360.10915.16022593920455285227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1ec77e59b4a4d76abec89275b998db6808c95ef166a931d4bdc5fb944fa3aa
Date: Thu, 30 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761796793
