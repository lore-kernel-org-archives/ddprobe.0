Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122AC381EAD
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789853437; cv=none; b=dbsbDYYcsJx/DDqAIBqVJ4R+4kLHDm5aUfDyAapNxPj/NPtsHeI0gHvmTxUx7arqWYvWcJZn0pyzGaZny+i4izcMoL+eYQw36F4nrCskeObntrBVHwKkeDnhMQ5gpCdN13uhlo/ZGsqVakA3DVAWVYkmYux7WKgQoT2mkGLzuMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789853437; c=relaxed/simple;
	bh=v1VfrRSGPbfd264bQSzerwZAvH6UUTQzDfSzozuwHik=;
	h=To:Subject:From:Message-Id:Date; b=GLiTkMdVVIUZuAHqlfEqDy/CIfpij+0hbsmSPyTugL/aDRGEGt4H7X5H+Ii/EtT1ad4mD6nFwMaBlnYrGrjYnp07xFBhwc9tSfoQ9oJor0HWWhExrRr/teFAJzadGnfXlP4jatYQytoKax844JEauxoj1YYTXjeQXHAYACJXRlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN03UkQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN03UkQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC464C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789853433;
	bh=v1VfrRSGPbfd264bQSzerwZAvH6UUTQzDfSzozuwHik=;
	h=To:Subject:From:Date:From;
	b=ZN03UkQmW3hM9hZnL4KCK37nGpT6LbZhBCa9uAeL7LsoYsc1BOubamSe3LNBTKccH
	 slTtwQEXj9QjrnXPghYvFZfB1kbdA8bwMk2X5dMWRbsFpGYbXcfT0RqUi8lN8tAcTJ
	 K3pkBT6ZmuFwdSHFrEIDGMD1a/goAqhoAlJkQKNDlZkWdmx9gRDlh8dkQpsQH96H09
	 E6UB/RukvNdbr3psMLeUwI35YDwN/OdYjPaPrOtj80sXe2HJsNtmcEJ/PW6VNabOH6
	 8v0IzKimxPtZ14iLaY9JRUIHM+YtOkRb062NyCMq8kokZz+2aUWXqDgBmLH2h6Fa7s
	 oUquwZHXKBiWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6FC982D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985343368.7966.2160843510810236572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d35598bd7e82ef7c319b5273441d18c21aa8962f02ef820cddcd7f3bc46d856
Date: Sat, 19 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789853433
