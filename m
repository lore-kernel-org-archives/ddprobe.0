Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ECC2417D9
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755185994; cv=none; b=WTu56OLZST6LjnBRNcWy7B5Mp0QHLYzDJvAkGT8TpLvYZlWRAzWmNiq25gbwPe9eWgh6li8LtbD3ZIK/SZH5/nVU7RAc8ekLy4zdIk0AU+YRjEFSMUyp9+pu4I/mx1zwKrDr8RbL3GEwEygGkENWdjUkZvV2IAZ1fkF1TSJ+nZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755185994; c=relaxed/simple;
	bh=AjzUXYOrbJsedcof2Pyfa8Lm9Mdfv48yeEyRLUmfMLM=;
	h=To:Subject:From:Message-Id:Date; b=Xf1+P5rHu1C+cngR9IV8td5lDYJgV3s76Kmt48nZCTMRM15AFgoYLfc/J9IUgAtiHn85OVoj+UPVuP3DJB8TVd3j+SJrSHiTihqm0neyKnvAhcsuhQDCJlT/Iq3bIzkk4xu5dHKbhZURO9LfU+oykDX6/NM8GYGtja5fDBa5+20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptj5Nyoy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptj5Nyoy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B97FC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755185993;
	bh=AjzUXYOrbJsedcof2Pyfa8Lm9Mdfv48yeEyRLUmfMLM=;
	h=To:Subject:From:Date:From;
	b=ptj5Nyoy281041gYEFhkJW+Dg2xRIj97Ad6n67j+oGhQhne/ZzsT5XZOLVnqHR7i5
	 6KpGnVDfe47INqD/KUhCYtOlzEyqnpdbJlQqOuoKjIGIlxgrA7JZ3kJJ0co2a7ybeg
	 MyLmNd2vcC+9tDiEvKx8+JEQKnifY/BygCpmqNsjQF0PaG8XCUcLw79CaV57TFvYuA
	 QGW/kbwHosivkgZfDsL11BM/Xo3yX07ozK9oTMErZlyeqHZxOw1aqgQmu/OrhrdES7
	 izobChDDSlVtvnIV8sSIgvyFSwlOEuJTlpTzskguVIJA8eeOYjaeXIZ4DJKrbfD4f3
	 W46FdfYYchCYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16ACA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518599357.11081.10773711371804052788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a425d7244fd24215a068b9cce94f2c933aab153cf6a134335931217beddff8
Date: Thu, 14 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755185993
