Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202FE22256B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760819394; cv=none; b=KcI7NwuNILRSR/qVgSEBl5FkvVKGyEcKZt1nWEegjUimhSoUYaILQGUjTnvcbZfm6OZT1ovf4SNlSjIr95W8HRm7KI+Uq+rhg/BaXyuCQarFgqJkYCiM0A+VMDQ1QR31OvLsDHut7s2v+WQyx4kpC15ZRBjOr/PqVl95X4hLJXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760819394; c=relaxed/simple;
	bh=f9nkVxwkcNdy0ib/GI6meaeXRQVCeN/HRD+CTqJqUJg=;
	h=To:Subject:From:Message-Id:Date; b=R/l1fjufhPhMo6GxMECKu70yod1JW2X04nOBUqbxrdmjfZ7hS1eF0IZrV8l69jpqtCjtI+hLstUJ/K/F375j3vRZA1LrHlTHkf04pU7T8lOvHJXR8DnePer5PzOf6vVxhzp8DVl7p46DPS2Qx1uqgxgCowTCYxwZKKUO4vnX4x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKNQsQUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKNQsQUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4713C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760819393;
	bh=f9nkVxwkcNdy0ib/GI6meaeXRQVCeN/HRD+CTqJqUJg=;
	h=To:Subject:From:Date:From;
	b=CKNQsQUI7/ndpWcdEvW+rkKTXICZoXRTBjd83C12duASQMp6KVqhjphAbOdkueFIq
	 zqtKlnNv9FVwfhuH/BwzvnYUUN8SMljeprhXkBg2+U4t+7g45wKHK9u+MoudO86iZj
	 0/I2KXj3L5zFP3UGy0Jw42owFrrDx0r7ngPOdFvrvc+yCHeeCOt8iyAcpLIeKZAKLy
	 KLmXqvlPVTyByMcCDKmCVH1b6NXcfRt+ZLuN0eAZZlSxtUVg7eDlavUA7ecpKjyD1Y
	 uSOVy1ptbtONwgB73Adcob03dqXZDg4FxQMAuk4x5q0PGbXo33fLfGkT/Rqn9+RwVO
	 6JmmaxRa819jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DB2CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081939358.24010.16336976537246629960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f17957155cf2dd61a19d02a7d5a096e9a1f6908f43f7d8c933830b86a19d7b61
Date: Sat, 18 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760819393
