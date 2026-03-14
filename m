Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F6338C2D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773531894; cv=none; b=fqAYVMBuS3LAYPkOUzLbPKIVV8WrOsoBvdF4Pi8FNN8bpB5qIgbidaezC5Gjos+zrzCx+YFuLS8zIuPGwZ/KL2NsekJYv7PUywBDiNgVoYEKFYnDjEAi4xJN0N5qPg8+bsfawZIsBENEiNj6XmEPeedGBeuynOl+EeyJs0xVKpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773531894; c=relaxed/simple;
	bh=KiXaVWfXp7ADj80m7ZPPkVMcpAUKZPhJM2I7CiX5HsA=;
	h=To:Subject:From:Message-Id:Date; b=RVDWbTuIO6GrKYA04i8dLcJazhclvX5UfZAt5C4iHgev3iEaReV5JhcG8obNjSS+mZCGzlzOk4kKy18/ssvTZp0LgoaV7EhwwRdrbJGiSbS2tvvKG6U3TkNV8eeWON33UFMIrzWA/d8A2e5ISQdR0K8YBhRt6oHUrv4C1DF0acs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI9f11xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI9f11xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB66C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773531893;
	bh=KiXaVWfXp7ADj80m7ZPPkVMcpAUKZPhJM2I7CiX5HsA=;
	h=To:Subject:From:Date:From;
	b=BI9f11xWLVbE5rkzVw7Qzxq6jGo8ChhDeRjj9g9a4Yz8jZlW1al5zeASgK2p2Jfp9
	 BtG27omMErI+p06rXxUgFjs5wzYRP683MpoJX5xcFm9VyFDfFlvS9W+yEQhWXK6Hvi
	 T8y8V2z9O4bLEL7TyGdmRj/s+lfsgoPYhYEXpKvDlUYCfytg502h5FArSmLopsJNW7
	 83ZKO65bEJi1TC7oHVjL6jTKiBwEzPvJKUm5m/kdv9F1CCQWPwhApYrLhomk+mZtbp
	 GjO+fE/wwD1IfBysKjFEXrMpI8hl4L+W8elq0szAFmUzpaePnXkJiM3JhMvHfQAV9+
	 X5zmMR7CuNJNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B9B10854B6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353189358.6614.16598305860419445939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4263f75705ec43b5605bb8124470e74cd3fb464af5ab3b1fdb4d69d67913ad5
Date: Sat, 14 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773531893
