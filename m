Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5A51EB45
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714324343; cv=none; b=hXBAtvnD6hWEOEeYt7y1USFBnHwJURdM738OWZHns78TIJUxXGwjee29e7m1O4J1rtPuMvtLNOMSrjto1I3Wzyv1v/KUjaOEneleo+s0hzk5za0b5FO/iwlQ/ofDcmGn/MYxpXeASfJf+XvSIPxvRLG7txR3xOruvSjbBWb5K8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714324343; c=relaxed/simple;
	bh=wYe11Rr0MAAKz1q6B3t7czVXkaNaprdKlEqOXToXc6k=;
	h=To:Subject:From:Message-Id:Date; b=tsGfrSclBQu00AvihxbCZu2HbJspkRBpeV7WtTDqyCV8hBQWHoneG7BtBMGy0ORyDv/42YjTd9eRMIHGW9wUTz5EG/m3HvguDLVCvnmMvJ4BeCx6oXyL8DzyHZTaO9uKH0kYqw7hs1lQIQYPY6xJDr7KIcw7YAmYewWuyhR5EA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgJVGX8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgJVGX8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EE9C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714324342;
	bh=wYe11Rr0MAAKz1q6B3t7czVXkaNaprdKlEqOXToXc6k=;
	h=To:Subject:From:Date:From;
	b=AgJVGX8J5PmGMHU0jMpav/qDZ+LnLIGO23dbiHGTknDJZN9LakDF+UBM+3ijqqeZI
	 kFkIpw/4COUyVJ39ppnPFYbpBSefBMGEujFNHC0vtvexJ4q+CItIaaBzGEkYqoPK6o
	 pPZJZgyni03Se8vOcoxxzlLUR/22urDS+G2fT/KP3vJKCq1rKNI1cREpYBpXGPTIjZ
	 jihQhNhvq6g1wMi/V5Cud2qEx8qYg/+X34xvqpKEkBdF/KDsD2z6IA6dobYyMfwmHJ
	 nXuhDyHoY1o1NyQKYkm4P21tMvc6VONOOlOvbxkVPL8dobuYjF0O0eOX/rmxjk/eA7
	 H+g08K/6pe4ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C107DC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432434278.32260.10849602549015731251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d9dab9444efc63a647dcc20eb32dcd19b97e498d8ecd7648320498500b2653
Date: Sun, 28 Apr 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714324342
