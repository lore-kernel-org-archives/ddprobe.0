Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0EB1E98FF
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772231694; cv=none; b=dTK5W7XJJFVDG/po+nQXhwcroAGwdIaoD/KygWGIxKHr8mjGN0zaSt18Qp8xNBGB0eWCGgavpdazpwfIDLeXBwfXAV72O6n9PITsXiWxkRcptNA/MIX7Sxi+9Pf6Fdfzu/7I6Ym4ubl5yk4zB6Le+4T0OWtCnoaBC2/6+1yQZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772231694; c=relaxed/simple;
	bh=Xmw+VKI/9+IywhZp+CQinFbFVF6ygQaITJpiOdCy5/c=;
	h=To:Subject:From:Message-Id:Date; b=R0Vv72Z476UuXadSsmohRu3lCVmsqQnCoyB2T0ziFnVYm5pio8un9SB18daG6rUtw1S/YU3tbURB7CF08gsOhvvtC9zDr6zXiMh4wAW4Ov2+0yqUcYhWqBkcqPdmHrFPMg+ufZV+ON1jT8havNIqaCe2HbE9yBdfgeJFlJEFMUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6XvmRPM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6XvmRPM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E52CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772231693;
	bh=Xmw+VKI/9+IywhZp+CQinFbFVF6ygQaITJpiOdCy5/c=;
	h=To:Subject:From:Date:From;
	b=j6XvmRPM2Uw26M00BxhYAa1EE3RZ8e6boJUhGX/dP8DM7hBFWKB1vVbzg4aruXsxf
	 H6XN2zIJ6aPANQpeibBFbEQmkY9wxh9Sh6mUcs41uBeP4JA8SjuTmMMsavtsgnHqIz
	 JSENEk2WepcondPKQZ0LqSd5ky4zZbTyW1oYTvhoVVLUpMHS+FSmCunaL/NY4zL2/y
	 xkxJ6nwnNM7+/jEo7nMdtfL/vWneE6FHiGisRbSFuuYu+WmxGfE8DaqaQGKntEJYGZ
	 XthXcXNdkOhN+Nccxx8rCOg6i7/kFKUdvkBG7TN5m018YMHHHxXAhQP9ph9pY4VKEo
	 owoFhdO4jzNRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E3104891D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223169357.25455.15511544881502374678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5121f7a2d7a9ee52fdb25db58f9d46923ebd4693dc2ba705db22e1f5ba7ad96a
Date: Fri, 27 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772231693
