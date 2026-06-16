Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E73037C92E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781574994; cv=none; b=dfIbil2532P45Yt5rQC3O0t+/aYE4mcfz972rZzkVj2mK/cZ0MAUHErAdAZcqekRLCmLVO4i4N3Hzyy46miuWR3e2FWtXaD+jYBQo2EVVMV8BMFVq0J3g5+6cuDHjfN75+1Uqi8OssyRj27vfYfNrHvEkwvGYZZ6EBJC+yw5cNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781574994; c=relaxed/simple;
	bh=FKvVl1OpwufP/VE6faAsfN/BSHtykfK3ESqcIHWPDrY=;
	h=To:Subject:From:Message-Id:Date; b=qEZ9eneyjopZeg9+wjRNh0BkuqcQUAz1QmNhATtlsdTdpcuVYAyS9zSSoFkgGnSavnZDyd9kcUk1hsmMYgvO2TboSPTZyX3/uAL78mGz7xxaHgTsvidIFT3aSeyay9nhKXYPfa0pm4UlrbAQ7kNk50wDEzx3f9I9Z5Rz9rAnNuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QWs1J3oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QWs1J3oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E79C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781574993;
	bh=FKvVl1OpwufP/VE6faAsfN/BSHtykfK3ESqcIHWPDrY=;
	h=To:Subject:From:Date:From;
	b=QWs1J3oMQTygcm43Jt+w41TlEwrQoDphXVMuLN4/pAx5ygqLC9VY8xcNlyFiq2TH1
	 RSK1LWvkvaiLj6vRrysLSQht/vFwZ7IEcAOG15xhpgvucKndkvCyEP7/hP0INjBTf9
	 Z6AeapiUP+Y+ZTZeaLU9lQK+SHla1NDX+rh8NqujBZQO2q0JygZ7/2Vg6hMGkMYg0U
	 OwgadWkFyV4wYWdF4O43qkSAfzga0ebaeYEQjCIMnFpjoBNF88wKxqe6WzGj1x0mPO
	 UytRKC7Sp/DYfI7wrdh+7o54TgW+vnV89ok10OUGIO49U5j61HPoGywBdAQhW+RUD5
	 x4TfXQJCULv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FE9CD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157499371.11481.15035915369064718273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4f8a305ff0b85f0d963e600485cc9810154ccdd9fed3574389ed82ee05ba6c
Date: Tue, 16 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781574993
