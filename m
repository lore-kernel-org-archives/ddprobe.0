Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276DF4A06
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757237995; cv=none; b=LrRgHU+fT1HUHzYsQ0PBoiF7g3w28nMAJ9Ed+GnboPTAHhBF9GU+vwaC1LqpcqZ7dRMoNA0IllcryJi2I3y7qsIdPYUaDH0jLOqyvZ9xIJPd8J+s6pHKfZQi0zKjlejKDqdwclr8+L4N2BzvCnjS8t745AoalrsnWpVq+sRZJkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757237995; c=relaxed/simple;
	bh=BPBXTKXsf9nlDDhHlM8Xt1Ne9UQPDFqb9zusMNyCt0o=;
	h=To:Subject:From:Message-Id:Date; b=pH+ftcI5C4bK7OVkxLakXqba2gaEu7lwDongsM/mzm9hrWceWKy6Ck0EtTyjPlRXQEG4Z1ICB/mpjdh4ZIqO5dhPjeEhr2iYJDOWxqjYXj11sV5D+4G0kMWJ8F892zvCNayLgBPhe3mOy755KKtvRhgnXOrJygL12Qi4/PqjYyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrpqiTCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrpqiTCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757237993;
	bh=BPBXTKXsf9nlDDhHlM8Xt1Ne9UQPDFqb9zusMNyCt0o=;
	h=To:Subject:From:Date:From;
	b=LrpqiTCQHJPByyHbbN6yBGZlZsBXabD9+Y2aYtFtlYHRNl4QHsvlgvh+81x16ohf1
	 aAvGfMqc37HUg7+EZryj6PTb5mQzfAeJb9RKi4CdFrwJ6kzUi6HkqW/bsVhCMUHxDS
	 9YObtlLjki0w07jqsVXyxIh65OC7KUrQfOtXAPnpAY0ybdf6MffUAniX/pYIfeByW/
	 QU4HD0zeG1ejxuGGoaL8itxJfxaLiDX6Mq7NoB4DdczZybCqSpmcHrU7KZB7ZkqzEr
	 IVy3mm8YVqOAO6YmPNsMxAoH8Q+qqBGa6FxeccjAxe2u1aKse9JqFzXo5dOKCJSsYG
	 Pfm+PVMkYz+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F841CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723799357.14286.409789480619019087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9c0788946eb77c040f14464bff7ca9183cfcde5b8bae06dc20d5255953c83e
Date: Sun, 07 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757237993
