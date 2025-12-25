Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165D225B31C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766694834; cv=none; b=IaFMNk0sMmHDh9m7/JH/uHOLbucaho1IuWLHZJmTWU5gjpCDG1RgwbjOgRAy95RTTexsBj8Qgm2kesXofAS16YuNKJ7nV5KvYzpIJPIQkwDf0gR1htx1B7JCDGoT1/fC8mZaIDBsMm32KTa8YhYqERmMFUx5jBtnK6KLeRZcNLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766694834; c=relaxed/simple;
	bh=i8L0+22GVsnuzIdtuwblatzyHaz3atO4I5VaqRKzc8I=;
	h=To:Subject:From:Message-Id:Date; b=JPuikOJ4c9ilzMEdSYi1ErgzmWc+A8ZxUR7hzVycyy0bohGIBwjz6hFj9S28+35XwwLyPO0BVOS7qK3HW+GDfL+EbjktYZhsqGws2ALZRY8V0HgqQsybm013ETvORNJRki06CM7hbDrCfqfdb+KRV9ZeI755U+AWB5rD5A3vDgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Glf3xP5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Glf3xP5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766694833;
	bh=i8L0+22GVsnuzIdtuwblatzyHaz3atO4I5VaqRKzc8I=;
	h=To:Subject:From:Date:From;
	b=Glf3xP5JsPv4xi+K4bsj3yElXfi2AhQ5FMpAWbvI53B9Z8esMPDOR4CCH6DsJko1i
	 yX4xl1H4E1+7h+jzcvoJveMpaz08e+yK73ldKz5JiSVvPk1ku/wW6uF6wedlIwfnzQ
	 N/YhBvvKPLmA/AnxpH2ClVh9y2CmrC2QrMAsOZYgNjw0K5aBS6qZDeLBC1m3lgVRUF
	 wuIMbW+S/vj673VymwI/fHHPmKxXvagde87oVTv1OwOit52nizd/6roD+4E0SYjbN5
	 20LITIHXOStelYZx89EpAxIB3Z7lmdpcy7Mgb284DxzDxdBZ3gRy45GVRJK0JAOBXi
	 qQH5z3aGXRg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F15E7AD67
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669483358.4398.15001995025720173751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82f6c0e7c2c6a73f8c7f6a5aed797cd51016839449ef06d9b609980b4de87ee
Date: Thu, 25 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766694833
